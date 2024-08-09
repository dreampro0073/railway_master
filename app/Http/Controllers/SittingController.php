<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Auth;
use Redirect, Validator, Hash, Response, Session, DB;
use App\Models\Entry, App\Models\User, App\Models\Sitting;

class SittingController extends Controller {

	public function setSlipId(){
		$entries = DB::table('sitting_entries')->where('m_slip',0)->orderBy('id','DESC')->take(500)->get();

		if(sizeof($entries) >0){
			foreach ($entries as $key => $entry) {
				if($entry->slip_id && $entry->slip_id !=''){
					$slip_id = $entry->slip_id;
					$slip_id = substr($slip_id, 1);

					$slip_id = "2".$slip_id;

					DB::table('sitting_entries')->where('id',$entry->id)->update([
						'slip_id' => $slip_id,
						'm_slip' => 1,
					]);
				}
				
			}
			return "Done";
		}else{
			return "All OK";
		}
	}

	
	
	public function sitting(Request $request){
		$service_ids = Session::get('service_ids');
		if(in_array(1, $service_ids)){
			return view('admin.sitting.index_new', [
	            "sidebar" => "sitting",
	            "subsidebar" => "sitting",
	        ]);
		} else {
			die("Not authorized!");
		}
	}
	public function initEntries(Request $request){

		if(Auth::user()->priv == 2){
			Entry::setCheckStatus();
		}

		$entries = Sitting::select('sitting_entries.*')->where("sitting_entries.client_id", Auth::user()->client_id);
		if($request->slip_id){
			$entries = $entries->where('sitting_entries.slip_id', $request->slip_id);
		}		
		if($request->name){
			$entries = $entries->where('sitting_entries.name', 'LIKE', '%'.$request->name.'%');
		}		
		if($request->mobile_no){
			$entries = $entries->where('sitting_entries.mobile_no', 'LIKE', '%'.$request->mobile_no.'%');
		}		
		if($request->pnr_uid){
			$entries = $entries->where('sitting_entries.pnr_uid', 'LIKE', '%'.$request->pnr_uid.'%');
		}		
		
		
		$entries = $entries->orderBy("checkout_status", 'ASC')->orderBy('id', "DESC");
		$entries = $entries->take(50);
		$entries = $entries->get();
		foreach ($entries as $item) {
			$item->show_time = date("h:i A",strtotime($item->check_in)).' - '.date("h:i A",strtotime($item->check_out));

			$e_total = DB::table('e_entries')->where('entry_id',$item->id)->where('is_collected',0)->where('is_checked',0)->sum('paid_amount');

			$item->paid_amount = $item->paid_amount + $e_total;
		}
		$rate_list = Sitting::rateList();

		$pay_types = Entry::payTypes();
		$hours = Entry::hours();
		$data['success'] = true;
		$data['entries'] = $entries;
		$data['pay_types'] = $pay_types;
		$data['hours'] = $hours;
		$data['rate_list'] = $rate_list;
		return Response::json($data, 200, []);
	}	
	
	public function editEntry(Request $request){
		$sitting_entry = Sitting::where('id', $request->entry_id)->first();

		if($sitting_entry){
			$sitting_entry->mobile_no = $sitting_entry->mobile_no*1;
			$sitting_entry->train_no = $sitting_entry->train_no*1;
			$sitting_entry->pnr_uid = $sitting_entry->pnr_uid;
			

			$e_total = Sitting::eSum($sitting_entry->id);
			$sitting_entry->paid_amount = $sitting_entry->paid_amount*1 + $e_total;
			$sitting_entry->total_amount = $sitting_entry->paid_amount;

			$sitting_entry->check_in = date("h:i A",strtotime($sitting_entry->check_in));
			$sitting_entry->check_out = date("h:i A",strtotime($sitting_entry->check_out));

			// $sitting_entry->show_valid_up = $this->getValTime($sitting_entry->hours_occ,$sitting_entry->date,$sitting_entry->check_in);
			$sitting_entry->show_valid_up = date("h:i A d-m-Y",strtotime($sitting_entry->checkout_date));
		}

		$data['success'] = true;
		$data['sitting_entry'] = $sitting_entry;
		return Response::json($data, 200, []);
	}
	
	public function checkoutInit(Request $request,$type=0){
		if($type== 1){
			$sitting_entry = Sitting::where('id', $request->entry_id)->where("checkout_status", 0)->first();
		}else{
			$productName =$request->productName;
    		$sitting_entry = Sitting::where('unique_id', $productName)->where("checkout_status", 0)->first();
		}

		if($sitting_entry){
    		$now_time = strtotime(date("Y-m-d H:i:s",strtotime("-10 minutes")));
			$current_time = strtotime(date("Y-m-d H:i:s"));
    		$checkout_time = strtotime($sitting_entry->checkout_date);

			if($checkout_time > $now_time){
				$sitting_entry->checkout_status = 1;
				$sitting_entry->checkout_time = date("Y-m-d H:i:s"); 
				$sitting_entry->checkout_by = Auth::id();
				$sitting_entry->save();

				DB::table('checks')->insert([
					'entry_id' => $sitting_entry->id,
					'slip_id' => $sitting_entry->slip_id,
					'added_by' => Auth::id(),
					'time' => date("Y-m-d H:i:s"),
					'type' => 1
				]);

				$data['success'] = true;
				$data["message"] = "Successfully Checkout";

			}else{
				$extra_time = $current_time-$checkout_time;
				$extra_time = round($extra_time/60/60, 2);
				$extra_hours = explode(".",$extra_time);
				$ex_hours = $extra_hours[0]*1;
				if($extra_hours[1] > 10){
					$ex_hours += 1;
				}
				$sitting_entry->mobile_no = $sitting_entry->mobile_no*1;
				$sitting_entry->train_no = $sitting_entry->train_no*1;
				$sitting_entry->pnr_uid = $sitting_entry->pnr_uid;
				
				$e_total = Sitting::eSum($sitting_entry->id);

				$sitting_entry->paid_amount = $sitting_entry->paid_amount*1 + $e_total;
				$sitting_entry->total_amount = $sitting_entry->paid_amount;

				$sitting_entry->check_in = date("h:i A",strtotime($sitting_entry->check_in));
				$sitting_entry->check_out = date("h:i A",strtotime($sitting_entry->check_out));
				$sitting_entry->checkout_date = date("d-m-Y h:i A",strtotime($sitting_entry->checkout_date));
				$data['success'] = false;
				$data['ex_hours'] = $ex_hours;

				$data['sitting_entry'] = $sitting_entry;
			}
		} else {
			$data['success'] = true;
			$data["message"] = "Already Checkout";
		}
		return Response::json($data, 200, []);
	}

	public function calCheck(Request $request){
		$entry = Sitting::find($request->entry_id);
		if($entry){
			$show_checkout_date = $this->getValTime($request->hours_occ,$entry->date,$entry->check_in);
		}else{
			$show_checkout_date = $this->getValTime($request->hours_occ,'','');

		}
		$data['success'] = true;
		$data['show_valid_up'] = date("h:i A d-m-Y",strtotime($show_checkout_date));
		return Response::json($data, 200, []);
	}


	function getValTime($hours_occ=0,$date='',$check_in=''){
		if($check_in !=''){
			$check_in_date = $date." ".$check_in;
			$no_of_min = $hours_occ*60;
			$show_valid_up = date("Y-m-d H:i:s",strtotime("+".$no_of_min." minutes",strtotime($check_in_date)));
		}else{
			$date = Entry::getPDate();
			$check_in_time = date("H:i:s");
			$check_in_date = $date.' '.$check_in_time;
			$no_of_min = $hours_occ*60;
			$show_valid_up = date("Y-m-d H:i:s",strtotime("+".$no_of_min." minutes",strtotime($check_in_date)));
		}
		return  date("h:i A d-m-Y",strtotime($show_valid_up));
	}

	public function store(Request $request){

		$date = Entry::getPDate();
		$user = Auth::user();

		$check_shift = Entry::checkShift();

		$cre = [
			'name'=>$request->name,
		];

		$rules = [
			'name'=>'required',
		];

		$validator = Validator::make($cre,$rules);

		if($validator->passes()){
			$total_amount = $request->total_amount;
			if($request->id){
				$entry = Sitting::find($request->id);
				if($request->hours_occ <= $entry->hours_occ){
					$data['success'] = false;
					$data['message'] = "Please select valid hours";
					return Response::json($data, 200, []);

				}

				if($request->balance_amount <= 0){
					$data['success'] = false;
					$data['message'] = "Please Referesh your screen and edit Again";

					return Response::json($data, 200, []);
				}

				$message = "Updated Successfully!";

				DB::table('e_entries')->insert([
					'entry_id' => $entry->id,
					'added_by' => Auth::id(),
					'date' => $date,
					'pay_type' => $request->pay_type,
					'shift' => $check_shift,
					'paid_amount' => $request->balance_amount,
					'created_at' => date("Y-m-d H:i:s"),
					'current_time' => date("H:i:s"),
					'client_id' => Auth::user()->client_id,
					'type' => 1,
				]);

			} else {
				$entry = new Sitting;
				$message = "Stored Successfully!";
				
				$entry->date = $date;
				$entry->added_by = Auth::id();
				$entry->paid_amount = $total_amount;
				$entry->pay_type = $request->pay_type;
				$entry->slip_id = Sitting::getSlipId();
				$entry->check_in = date("H:i:s");
				$entry->checkin_date = date("Y-m-d H:i:s");
				$entry->client_id = Auth::user()->client_id;
				$entry->shift = $check_shift;
			}

			$entry->name = $request->name;
			$entry->pnr_uid = $request->pnr_uid;
			$entry->mobile_no = $request->mobile_no;	
			$entry->no_of_adults = $request->no_of_adults ? $request->no_of_adults : 0;
			$entry->no_of_children = $request->no_of_children ? $request->no_of_children : 0;
			$entry->no_of_baby_staff = $request->no_of_baby_staff ? $request->no_of_baby_staff : 0;
			$entry->hours_occ = $request->hours_occ ? $request->hours_occ : 0;
			$entry->remarks = $request->remarks;
			$entry->unique_id = strtotime('now');
			$entry->save();

			$entry->total_hours = $entry->hours_occ;
			$no_of_min = $request->hours_occ*60;

			$entry->check_out = date("H:i:s",strtotime("+".$no_of_min." minutes",strtotime($entry->check_in)));
			$entry->checkout_date = date("Y-m-d H:i:s",strtotime("+".$no_of_min." minutes",strtotime($entry->checkin_date)));


			$e_total = Sitting::eSum($entry->id);

			$entry->total_amount = $e_total + $entry->paid_amount;
			$barcodevalue = bin2hex($entry->unique_id);
			$entry->barcodevalue = $barcodevalue;
			$entry->max_print = $entry->max_print+1;


			$entry->save();
			$data['id'] = $entry->id;
			$data['print_id'] = $entry->barcodevalue;
			$data['success'] = true;
		} else {
			$data['success'] = false;
			$message = $validator->errors()->first();
		}
		return Response::json($data, 200, []);
	}

	public function checkoutStore(Request $request){
		$date = Entry::getPDate();
		$user = Auth::user();
		$check_shift = Entry::checkShift();
		$cre = [
			'name'=>$request->name,
		];

		$rules = [
			'name'=>'required',
		];

		$validator = Validator::make($cre,$rules);

		if($validator->passes()){
			$entry = Sitting::find($request->id);
			DB::table('e_entries')->insert([
				'entry_id' => $entry->id,
				'added_by' => Auth::id(),
				'date' => $date,
				'pay_type' => $request->pay_type,
				'shift' => $check_shift,
				'paid_amount' => $request->balance_amount,
				'created_at' => date("Y-m-d H:i:s"),
				'current_time' => date("H:i:s"),
				'client_id' => $entry->client_id,
				'type' => 2,
			]);

			$entry->checkout_time = date("Y-m-d H:i:s");
			$entry->checkout_status = 1;
			$entry->checkout_by = Auth::id();
			// $entry->total_amount = $request->total_amount;
			$entry->hours_occ = $request->hours_occ;
			
			$entry->save();
			$entry->total_hours = $entry->hours_occ;

			$e_total = DB::table('e_entries')->where('is_collected',0)->where('is_checked',0)->where('entry_id',$entry->id)->sum('paid_amount');

			$no_of_min = $entry->total_hours*60;

			$check_in_date = $entry->date." ".$entry->check_in;
			$entry->check_out = date("H:i:s",strtotime("+".$no_of_min." minutes",strtotime($entry->check_in)));
			$entry->checkout_date = date("Y-m-d H:i:s",strtotime("+".$no_of_min." minutes",strtotime($check_in_date)));

			$e_total = Sitting::eSum($entry->id);
			$entry->total_amount = $e_total + $entry->paid_amount;
			$entry->is_late = 1;

			$entry->save();

			DB::table('checks')->insert([
				'entry_id' => $entry->id,
				'slip_id' => $entry->slip_id,
				'time' => date("Y-m-d H:i:s"),
				'added_by' => Auth::id(),
				'type' =>2,

			]);
			
			$data['id'] = $entry->id;
			$data['success'] = true;
			$data['message'] = "Checkout Successfully";
		} else {
			$data['success'] = false;
			$message = $validator->errors()->first();
		}
		return Response::json($data, 200, []);
	}
	
	
	public function printPost($id = 0){

        $print_data = DB::table('sitting_entries')->where('id', $id)->first();
		$print_data->type = "silip";
        
        $print_data->total_member = $print_data->no_of_adults + $print_data->no_of_children + $print_data->no_of_baby_staff;
        $print_data->adult_amount = 0;
        $print_data->children_amount = 0;
        $hours = $print_data->hours_occ;
        $rate_list = Sitting::rateList();

        $e_total = DB::table('e_entries')->select('paid_amount')->where('is_collected',0)->where('is_checked',0)->where('entry_id', $print_data->id)->sum('paid_amount');

        $total_amount =  $print_data->paid_amount + $e_total;

        if($hours > 0) {
            $print_data->adult_amount = $print_data->no_of_adults * $hours * $rate_list->adult_rate;
            $print_data->children_amount = $print_data->no_of_children * $rate_list->child_rate * $hours;
        }
              
		return view('admin.sitting.print_sitting',compact('print_data','total_amount'));
	}

	public function printPostUnq($type =1,$print_id = ''){
        $print_data = DB::table('sitting_entries')->where('barcodevalue', $print_id)->first();

        if($type == 1 && Auth::user()->priv == 3 && $print_data->print_count >= $print_data->max_print){
			return "Print not allowed";
		}
		if($type == 2 && Auth::user()->priv == 3 && $print_data->print_count >= $print_data->max_print){
			return "Print not allowed";
		}
        
        $print_data->total_member = $print_data->no_of_adults + $print_data->no_of_children + $print_data->no_of_baby_staff;
        $print_data->adult_amount = 0;
        $print_data->children_amount = 0;
        $hours = $print_data->hours_occ;
        $rate_list = Sitting::rateList();

        $e_total = Sitting::eSum($print_data->id);

        $total_amount =  $print_data->paid_amount + $e_total;

        if($hours > 0) {
            $print_data->adult_amount = $print_data->no_of_adults * $hours * $rate_list->adult_rate;
            $print_data->children_amount = $print_data->no_of_children * $rate_list->child_rate * $hours;
        }

        DB::table('sitting_entries')->where('id',$print_data->id)->update([
        	'print_count' => $print_data->print_count+1,
        ]);
              
		return view('admin.sitting.print_sitting_unq',compact('print_data','total_amount'));
	}

    // public function delete($id){
    // 	DB::table('sitting_entries')->where('client_id', Auth::user()->client_id)->where('id',$id)->update([
    // 		'deleted' => 1,
    // 		'delete_by' => Auth::id(),
    // 		'delete_time' => date("Y-m-d H:i:s"),

    // 	]);

    // 	$data['success'] = true;
    // 	$data['message'] = "Successfully";
		
	// 	return Response::json($data, 200, []);
    // }

}
