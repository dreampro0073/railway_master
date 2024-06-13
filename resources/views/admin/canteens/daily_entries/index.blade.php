@extends('admin.layout')

@section('main')
    <div class="main" ng-controller="dailyEntryCtrl" ng-init="init();initCanteenItems();"> 
        @include("admin.canteens.daily_entries.add")
        <div class="card shadow mb-4 p-4">      
            <div class="filters" style="margin:24px 0;">
                <form name="filterForm"  novalidate>
                    <div class="row" style="font-size: 14px">

                        <div class="col-md-9">
                            <div class="row">
                                                 
                                <div class="col-md-3 form-group">
                                    <label class="label-control">Name</label>
                                    <input type="text" class="form-control" ng-model="filter.item_name" />
                                </div>                    
                                <div class="col-md-3 form-group">
                                    <label class="label-control">Mobile</label>
                                    <input type="text" class="form-control" ng-model="filter.item_short_name" />
                                </div>
                              
                            </div>
                        </div>
                        <div class="col-md-3 text-right" style="margin-top: 25px;" class="mb-2">
                            <button type="button" ng-click="init()" class="btn btn-primary" style="width: 70px;">Search</button>
                            <button type="button" ng-click="filterClear()" class="btn  btn-warning" style="width: 70px;">Clear</button>
                            <button type="button" ng-click="add()" class="btn btn-primary" style="width: 70px;">Add</button>
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
                            <th>Name</th>
                            <th>Paid Amount</th>
                            <th>Time</th>
                            
                            <th>#</th>
                        </tr>
                    </thead>
                    <tbody ng-if="daily_entries.length > 0">
                        <tr ng-repeat="item in daily_entries">
                            <td>@{{ $index+1 }}</td>
                            <td>@{{ item.name }}</td>
                            <td>@{{ item.total_amount }}</td>
                            <td>@{{ item.time }}</td>
                           
                            <td>
                                <a href="javascript:;" class="btn btn-sm btn-warning" ng-click="edit(item.id)">Edit</a>
                            </td>

                           
                        </tr>
                    </tbody>
                </table>
                <div ng-if="daily_entries.length == 0" class="alert alert-danger">Data Not Found!</div>
            </div>   
        </div>
    </div>
@endsection
    
    