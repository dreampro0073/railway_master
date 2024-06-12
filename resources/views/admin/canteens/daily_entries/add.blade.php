<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <div class="row">
                    <div class="col-md-6">
                        <h5 class="modal-title" id="exampleModalLongTitle">Add Item</h5>
                    </div>
                    <div class="col-md-6" style="text-align:right;">
                        <button type="button" class="close" ng-click="hideModal();" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                </div>
                
            </div>
            <div class="modal-body">
                <form name="myForm" novalidate="novalidate" ng-submit="onSubmit(myForm.$valid)">
                    <div class="row">
                        <div class="col-md-4 form-group">
                            <label>Name</label>
                            <input type="text" ng-model="formData.name" class="form-control" required />
                        </div>
                        <div class="col-md-4 form-group">
                            <label>Mobile</label>
                            <input type="number" ng-model="formData.mobile" class="form-control" required />
                        </div>
                        <div class="col-md-4 form-group">
                            <label>Price</label><br>
                            <label><input type="radio" ng-model="formData.pay_type" value="1">&nbsp;Cash</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <label><input type="radio" ng-model="formData.pay_type" value="2">&nbsp;UPI</label>
                            
                        </div>
                       
                      
                    </div>
                   
                   
                    <div class="pt-4">
                        <button type="submit" class="btn btn-primary" ng-disabled="loading">
                            <span ng-if="!loading">Submit</span>
                            <span ng-if="loading">Loading...</span>
                        </button> 
                    </div>  
                    
               </form>
            </div>
           
        </div>
    </div>
</div>
