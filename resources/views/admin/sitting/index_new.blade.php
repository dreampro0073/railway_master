@extends('admin.layout')

@section('main')
    <div class="main" ng-controller="sittingCtrl" ng-init="init();"> 
        @include('admin.sitting.add')
        @include('admin.sitting.checkout')
        <div class="card shadow mb-4 p-4">

            <div class="filters" style="margin:24px 0;">
                <div class="form-group">
                    <input autofocus type="text" id="productName" ng-model="productName" ng-keypress="handleKeyPress($event)"
                   style="padding: 10px; border-radius: 4px; border: 1px solid #ccc; margin-bottom: 10px; width: 100%;"
                   placeholder="Barcodevalue">
                </div>
                <form name="filterForm"  novalidate>
                    <div class="row" style="font-size: 14px">

                        <div class="col-md-9">
                            <div class="row">
                                <div class="col-md-2 form-group">
                                    <label class="label-control">Slip ID</label>
                                    <input type="text" class="form-control" ng-model="filter.slip_id" />
                                </div>                    
                                               
                                <div class="col-md-3 form-group">
                                    <label class="label-control">Name</label>
                                    <input type="text" class="form-control" ng-model="filter.name" />
                                </div>                    
                                <div class="col-md-3 form-group">
                                    <label class="label-control">Mobile</label>
                                    <input type="text" class="form-control" ng-model="filter.mobile_no" />
                                </div>
                                <div class="col-md-2 form-group">
                                    <label class="label-control">PNR</label>
                                    <input type="text" class="form-control" ng-model="filter.pnr_uid" />
                                </div>
                              
                            </div>
                        </div>
                        <div class="col-md-3 text-right" style="margin-top: 25px;" class="mb-2">
                            <button type="button" ng-click="init()" class="btn  btn-primary" style="width: 70px;">Search</button>
                            <button type="button" ng-click="filterClear()" class="btn  btn-warning" style="width: 70px;">Clear</button>
                            @if(Auth::user()->priv !=4)
                            <button type="button" ng-click="add()" class="btn  btn-primary" style="width: 70px;">Add</button>
                            @endif
                        </div>
                    </div>
                </form>
            </div>
            <hr>
            <div>
                <table class="table table-bordered table-striped" >
                    <thead style="background-color: rgba(0,0,0,.075);">
                        <tr class="table-primary">
                            <th>S.no</th>
                            <th>Slip ID</th>   
                            <th>Name</th>
                            <th>Mobile No</th>
                            <th>PNR</th>
                            <th>Validity</th>
                            <th>Pay Type</th>
                            <th>Paid Amount</th>
                            @if(Auth::user()->priv == 1)
                                <th>#</th>
                            @endif
                            <th>#</th>
                        </tr>
                    </thead>
                    <tbody ng-if="entries.length > 0">
                        <tr ng-repeat="item in entries" ng-class="{'not_checkout' : item.checkout_status == 0 }">
                            <td>@{{ $index+1 }}</td>
                            <td>@{{ item.slip_id }}</td>
                            
                            <td>@{{ item.name }}</td>
                            <td>@{{ item.mobile_no }}</td>

                            <td>@{{ item.pnr_uid }}</td>
                            <td>@{{ item.show_time }} (@{{item.hours_occ}} Hr)</td>
                            <td>
                                <span ng-if="item.pay_type == 1">Cash</span>
                                <span ng-if="item.pay_type == 2">UPI</span>
                            </td>
                            <td>@{{ item.paid_amount }}</td>
                            @if(Auth::user()->priv == 1)

                            <td>
                                <div ng-if="item.deleted == 1">
                                    <span >@{{item.username}},</span>
                                    <span >@{{item.delete_time}}</span>
                                </div>
                            </td>
                            @endif
                            
                            <td>
                                <!-- <a href="javascript:;" ng-if="item.checkout_status != 1 " ng-click="editCheckout(item.id)" class="btn btn-danger btn-sm">Checkout</a> -->
                                <a ng-if="item.checkout_status != 1" href="javascript:;" ng-click="edit(item.id)" class="btn btn-warning btn-sm">Edit</a>
                                
                                <a ng-if="item.checkout_status != 1" href="{{url('/admin/sitting/print-unq/2/')}}/@{{item.barcodevalue}}" class="btn btn-success btn-sm" target="_blank">Print</a>
                        </tr>
                    </tbody>
                </table>
                <div ng-if="entries.length == 0" class="alert alert-danger">Data Not Found!</div>
            </div>  
           
        </div>
    </div>
@endsection
    
    