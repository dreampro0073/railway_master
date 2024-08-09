<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;

use Illuminate\Http\Request;

use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Auth;
use Redirect, Validator, Hash, Response, Session, DB;
use App\Models\User;
use App\Models\Entry;
use App\Models\CloakRoom, App\Models\Sitting, App\Models\Canteen;


class ShiftController extends Controller {
	
	public function index(){
		return view('admin.shift.index', [
            "sidebar" => "shift",
            "subsidebar" => "shift",
        ]);
		
	}

	public function init(Request $request){

		$input_date = $request->input_date;
		$user_id = $request->has('user_id')?$request->user_id:0;
		$users = DB::table('users')->select('id','name')->where('priv','!=',4)->where("client_id", Auth::user()->client_id)->get();
		$service_ids = Session::get('service_ids');

		$current_shift = Entry::checkShift();
		$total_shift_upi = 0;
		$total_shift_cash = 0;
		$total_collection = 0;
		$last_hour_upi_total = 0;
		$last_hour_cash_total = 0;
		$last_hour_total = 0;

		if(Auth::user()->priv != 2){
            $user_id = Auth::id();
        }

        if(Auth::user()->priv ==4 && Auth::id() == 23){
        	$user_id = 19;
        }

		if(in_array(1, $service_ids)){
			$sitting_data = Sitting::totalShiftData($input_date,$user_id);
			$total_shift_upi += $sitting_data['total_shift_upi'];
			$total_shift_cash += $sitting_data['total_shift_cash'];
			$total_collection += $sitting_data['total_collection'];
			$last_hour_upi_total += $sitting_data['last_hour_upi_total'];
			$last_hour_cash_total += $sitting_data['last_hour_cash_total'];
			$last_hour_total += $sitting_data['last_hour_total'];
			$data['sitting_data'] = $sitting_data;
		}

		if(in_array(2, $service_ids)){
			$cloak_data = CloakRoom::totalShiftData($input_date,$user_id);
			$total_shift_upi += $cloak_data['total_shift_upi'];
			$total_shift_cash += $cloak_data['total_shift_cash'];
			$total_collection += $cloak_data['total_collection'];
			$last_hour_upi_total += $cloak_data['last_hour_upi_total'];
			$last_hour_cash_total += $cloak_data['last_hour_cash_total'];
			$last_hour_total += $cloak_data['last_hour_total'];
			$data['cloak_data'] = $cloak_data;
		}
		
		if(in_array(3, $service_ids)){
			$canteen_data = Canteen::totalShiftData($input_date,$user_id);
			$total_shift_upi += $canteen_data['total_shift_upi'];
			$total_shift_cash += $canteen_data['total_shift_cash'];
			$total_collection += $canteen_data['total_collection'];
			$last_hour_upi_total += $canteen_data['last_hour_upi_total'];
			$last_hour_cash_total += $canteen_data['last_hour_cash_total'];
			$last_hour_total += $canteen_data['last_hour_total'];
			$data['canteen_data'] = $canteen_data;
		}
	
        $data['total_shift_upi'] = $total_shift_upi;
		$data['total_shift_cash'] = $total_shift_cash;
		$data['total_collection'] = $total_collection;
		$data['last_hour_upi_total'] = $last_hour_upi_total;
		$data['last_hour_cash_total'] = $last_hour_cash_total;
		$data['last_hour_total'] = $last_hour_total;

		$data['success'] = true;
		$data['users'] = $users;
		return Response::json($data, 200, []);
	}
	
	public function print($type =1){
		$current_shift = Entry::checkShift();
		$cloak_data = CloakRoom::totalShiftData();

		$total_shift_upi = $cloak_data['total_shift_upi'];
        $total_shift_cash = $cloak_data['total_shift_cash'];
        $total_collection = $cloak_data['total_collection'];
		

        return view('admin.print_shift',[
        	'cloak_data'=>$cloak_data,
        	'total_shift_upi'=>$total_shift_upi,
        	'total_shift_cash'=>$total_shift_cash,
        	'total_collection'=>$total_collection
        ]);
	}

}
