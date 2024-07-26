<?php $check=true; ?>
@extends('admin.layout')

@section('main')

 <div class="main" ng-controller="cloackCtrl"> 
    <h1 class="h3 mb-2 text-gray-800">Checkout</h1>	
    @include('admin.cloakrooms.add')
   	<div class="form-group">
        <input  autofocus type="text" id="productName" ng-model="productName" ng-keypress="handleKeyPress($event)"
       style="padding: 10px; border-radius: 4px; border: 1px solid #ccc; margin-bottom: 10px; width: 100%;height: calc(100vh - 100px);"
       placeholder="Enter product name">
    </div>

</div>
@endsection


@section('footer_scripts')
    
    
@endsection
