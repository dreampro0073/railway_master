app.controller('dailyEntryCtrl', function($scope , $http, $timeout , DBService) {
    $scope.loading = false;
    $scope.formData = {
        name:'',
        mobile:'',
        pay_type: 1,
        total_amount: 0,
        total_item:0,
        products: [{demo:''}],

    };

    $scope.products = [];
    $scope.product = {
        canteen_item_id:0,
        item_name:'',
        quantity:1,
    }; 


    // $scope.total_amount= 0;
    $scope.filter = {};
    $scope.entry_id = 0;
    $scope.daily_entries = [];
    $scope.canteen_items = [];
    $scope.productname = '';

    $scope.selectConfig = {
        valueField: 'canteen_item_id',
        labelField: 'item_name',
        maxItems:1,
        searchField: 'item_name',
        create: false,
        onInitialize: function(selectize){
              
        }
    }
    $scope.init = function () {
        DBService.postCall($scope.filter, '/api/daily-entries/init').then((data) => {
            $scope.daily_entries = data.daily_entries;
            $scope.canteen_items = data.canteen_items;
            $("#productname").
        });
    }

    $scope.filterClear = function(){
        $scope.filter = {};
        $scope.init();
    }

    $scope.edit = function(entry_id){
        $scope.entry_id = entry_id;
        DBService.postCall({entry_id : $scope.entry_id}, '/api/daily-entries/edit-init').then((data) => {
            if (data.success) {
                $scope.formData = data.s_entry;
                $("#exampleModalCenter").modal("show");
            }
        });
    }

    $scope.hideModal = () => {
        $("#exampleModalCenter").modal("hide");
        $scope.entry_id = 0;
        $scope.formData = {
            name:'',
            mobile:'',
            items:[],
        };
        $scope.init();
    }

    $scope.add = () => {
        $("#productname").focus();
        $scope.entry_id = 0;

        $scope.formData = {
            name:'',
            mobile:'',
            items:[],
        };
        setTimeout(function() {
            $("#exampleModalCenter").modal("show");
        }, 300); 
       
    }

    $scope.onSubmit = function () {
        $scope.loading = true;
        $scope.formData.products = $scope.products;
        if($scope.products.length == 0){
            alert("Plese select at least one item.");
            $scope.loading = false;
            return;
        }
        DBService.postCall($scope.formData, '/api/daily-entries/store').then((data) => {
            if (data.success) {
                alert(data.message);
                $("#exampleModalCenter").modal("hide");

                $scope.formData = {
                    name:'',
                    mobile:'',
                    items:[],
                };
                $scope.products = [];
                $scope.init();
                setTimeout(function(){
                    window.open(base_url+'/admin/daily-entries/print/'+data.entry_id,'_blank');
                }, 800);
            }else{
                alert(data.message);
            }
            $scope.loading = false;
        });
    }

    $scope.onAddProdcut = () => {
        
        let products = $scope.products;
        var my_item = $scope.canteen_items.find(item => item.barcodevalue == $scope.productname);

        let index = -1;
        if(products.length > 0){
            index = products.findIndex(item => item.barcodevalue == $scope.productname);
        }

        // if (index == -1) {
        //     my_item.paid_amount = my_item.price*1;
        //     my_item.quantity = 1;
        //     products.push(my_item);
        // } else {
        //     $scope.products[index].quantity += 1;
        //     $scope.products[index].paid_amount = my_item.price*$scope.products[index].quantity;
        // }

        my_item.paid_amount = my_item.price*1;
        my_item.quantity = 1;
        products.push(my_item);

        $scope.product = {
            canteen_item_id:0,
            item_name:'',
            quantity:1,
        }; 

        $scope.products = products;
        var total_amount = 0;
        var total_item = 0;
        for (var i = 0; i < $scope.products.length; i++) {
            var el = $scope.products[i];
            total_amount = total_amount+el.paid_amount;
            total_item = total_item+el.quantity;
        }

        $scope.formData.total_amount = total_amount;
        $scope.formData.total_item = total_item;
        $scope.productname = '';
        $("#productname").focus();

    }

    $scope.removeItem = (index) => {
        $scope.product = $scope.products[index];
        $scope.formData.total_amount = $scope.formData.total_amount - $scope.product.paid_amount;
        $scope.formData.total_item = $scope.products.length -1;
        $scope.products.splice(index,1);

    }

    $scope.handleKeyPress = function(event) {
        if (event.which === 13) {
            $scope.onAddProdcut();
            if ($scope.scannedValue.trim()) {
                $scope.scannedValue = '';
            }
        } else {
            $scope.scannedValue = ($scope.scannedValue || '') + event.key;
        }
    };
    // $scope.onAddProdcut = () => {
    //     let products = $scope.products;
    //     var my_item = $scope.canteen_items.find(item => item.canteen_item_id == $scope.product.canteen_item_id);
    //     let index = -1;
    //     if(products.length > 0){
    //         index = products.find(item => item.canteen_item_id == $scope.product.canteen_item_id);
    //     }

    //     if (index == -1) {
    //         my_item.paid_amount = my_item.price*$scope.product.quantity;
    //         my_item.quantity = $scope.product.quantity;
    //         products.push(my_item);
    //     } else {
    //         $scope.products[index].quantity += $scope.product.quantity;
    //         $scope.products[index].paid_amount = my_item.price*$scope.products[index].quantity;
    //     }

    //     $scope.product = {
    //         canteen_item_id:0,
    //         item_name:'',
    //         quantity:'',
    //     }; 

    //     $scope.products = products;

    //     var total_amount = 0;
    //     var total_item = 0;
    //     for (var i = 0; i < $scope.products.length; i++) {
    //         var el = $scope.products[i];
    //         total_amount = total_amount+el.paid_amount;
    //         total_item = total_item+el.quantity;
    //     }

    //     $scope.formData.total_amount = total_amount;
    //     $scope.formData.total_item = total_item;

    // }

});