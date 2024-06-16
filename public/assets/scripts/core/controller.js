app.controller('cloackCtrl', function($scope , $http, $timeout , DBService) {
    $scope.loading = false;
    $scope.formData = {
        name:'',
        mobile:"",
        total_amount:0,
        paid_amount:0,
        balance_amount:0,
        hours_occ:0,
        check_in:'',
        check_out:'',
        no_of_bag:0,
        no_of_day:1,
    };

    $scope.type = 0;
    $scope.entry_id = 0;
    $scope.check_shift = "";
    $scope.pay_types = [];
    $scope.days = [];
    $scope.cloak_first_rate = 0;
    $scope.cloak_second_rate = 0;
    $scope.init = function () {

        DBService.postCall($scope.filter, '/api/cloak-rooms/init/'+$scope.type).then((data) => {
            if (data.success) {
                console.log(data.rate_list);
                $scope.pay_types = data.pay_types;
                $scope.l_entries = data.l_entries;
                $scope.days = data.days;
                $scope.cloak_first_rate = data.rate_list.first_rate;
                $scope.cloak_second_rate = data.rate_list.second_rate;
            }
        });
    }
    $scope.filterClear = function(){
        $scope.filter = {};
        $scope.init();
    }

    $scope.edit = function(entry_id){
        $scope.entry_id = entry_id;
        DBService.postCall({entry_id : $scope.entry_id}, '/api/cloak-rooms/edit-init').then((data) => {

            if (data.success) {
                $scope.formData = data.l_entry;
                $("#exampleModalCenter").modal("show");
            }
            
        });
    }    

    $scope.checkoutCloak = function(entry_id){
        $scope.entry_id = entry_id;
        if(confirm("Are you sure?") == true){
             DBService.postCall({entry_id : $scope.entry_id}, '/api/cloak-rooms/checkout-init').then((data) => {
                if (data.timeOut) {
                    $scope.formData = data.l_entry;
                    
                    $("#checkoutCloakModel").modal("show");
                }else{
                    $scope.init(); 
                }
                
            });
        }
    }

    $scope.add = function(){
        $scope.entry_id = 0;
        $("#exampleModalCenter").modal("show");   
        // $scope.changeAmount();
    }

    $scope.hideModal = () => {
        
        $scope.entry_id = 0;
        $scope.formData = {
            name:'',
            mobile:"",
            total_amount:0,
            paid_amount:0,
            balance_amount:0,
            hours_occ:0,
            check_in:'',
            check_out:'',
            no_of_bag:0,
            no_of_day:1,

        };
        $("#exampleModalCenter").modal("hide");
        $("#checkoutCloakModel").modal("hide");
    }

    $scope.onSubmit = function () {
        $scope.loading = true;
        DBService.postCall($scope.formData, '/api/cloak-rooms/store').then((data) => {

            if (data.success) {
                $scope.loading = false;

                $("#exampleModalCenter").modal("hide");
                $scope.entry_id = 0;
                $scope.formData = {
                    name:'',
                    mobile:"",
                    total_amount:0,
                    paid_amount:0,
                    balance_amount:0,
                    hours_occ:0,
                    check_in:'',
                    check_out:'',
                    no_of_bag:0,
                    no_of_day:1,
                };
                $scope.init();
                setTimeout(function(){
                    window.open(base_url+'/admin/cloak-rooms/print/'+data.id,'_blank');
                }, 800);

            }
            $scope.loading = false;
        });
    }
    $scope.onCheckOut = function () {
        $scope.loading = true;
        DBService.postCall($scope.formData, '/api/cloak-rooms/checkout-store').then((data) => {
            if (data.success) {
                $("#checkoutCloakModel").modal("hide");
                $scope.entry_id = 0;
                $scope.formData = {
                    name:'',
                    mobile:"",
                    total_amount:0,
                    paid_amount:0,
                    balance_amount:0,
                    hours_occ:0,
                    check_in:'',
                    check_out:'',
                    no_of_bag:0,
                    no_of_day:1,
                };
                $scope.init();
                setTimeout(function(){
                    window.open(base_url+'/admin/cloak-rooms/print/'+data.id,'_blank');
                }, 800);
            }
            $scope.loading = false;
        });
    }

    $scope.changeAmount = function(){
        // $scope.formData.paid_amount = 0;
       
        var amount = $scope.cloak_first_rate;
        if($scope.formData.no_of_day > 1){
            amount  = (amount + (($scope.formData.no_of_day-1)*$scope.cloak_second_rate));
        }

        amount = amount*$scope.formData.no_of_bag;
        if($scope.entry_id == 0){
            $scope.formData.paid_amount = amount;
        }else{
            $scope.formData.balance_amount = amount - $scope.formData.paid_amount;
        }


       
    }
    $scope.delete = function (id) {
        if(confirm("Are you sure?") == true){
            DBService.getCall('/api/cloak-rooms/delete/'+id).then((data) => {
                alert(data.message);
                $scope.init();
            });
        }
    }

    
});
app.controller('lockerCtrl', function($scope , $http, $timeout , DBService) {
    $scope.loading = false;
    $scope.formData = {
        name:'',
        mobile:"",
        paid_amount:0,
        no_of_day:'',
        locker_id:'',
    };

    $scope.filter = {};

    $scope.entry_id = 0;

    $scope.check_shift = "";
    $scope.pay_types = [];
    $scope.avail_lockers = [];
    $scope.days = [];
    $scope.type = 0;

    // $scope.sl_lockers = [];
    
    $scope.init = function () {
        
        DBService.postCall($scope.filter, '/api/locker/init/'+$scope.type).then((data) => {
            if (data.success) {
                $scope.pay_types = data.pay_types;
                $scope.l_entries = data.l_entries;
                // $scope.avail_lockers = data.avail_lockers;
                $scope.days = data.days;
            }
        });
    }
    $scope.filterClear = function(){
        $scope.filter = {};
        $scope.init();
    }

    $scope.edit = function(entry_id){
        $scope.entry_id = entry_id;
        $scope.sl_lockers = [];
        DBService.postCall({entry_id : $scope.entry_id}, '/api/locker/edit-init').then((data) => {
            if (data.success) {
                $scope.formData = data.l_entry;
                // $scope.sl_lockers = data.sl_lockers;
                $("#exampleModalCenter").modal("show");
            }
            
        });
    }    

    $scope.checkoutLoker = function(entry_id){
        $scope.entry_id = entry_id;

        if(confirm("Are you sure?") == true){
             DBService.postCall({entry_id : $scope.entry_id}, '/api/locker/checkout-init').then((data) => {
                if (data.timeOut) {
                    $scope.formData = data.l_entry;
                    
                    $("#checkoutLokerModel").modal("show");
                }else{
                    $scope.init(); 
                }
                
            });
        }
    }

    $scope.add = function(){
        $scope.entry_id = 0;
        // $scope.sl_lockers = [];
        $("#exampleModalCenter").modal("show");    
    }

    $scope.hideModal = () => {
        $("#exampleModalCenter").modal("hide");
        $("#checkoutLokerModel").modal("hide");
        $scope.entry_id = 0;
        $scope.formData = {
            name:'',
            mobile:"",
            total_amount:0,
            paid_amount:0,
            balance_amount:0,
        };
    }

    $scope.onSubmit = function () {
        $scope.loading = true;

        $scope.formData.sl_lockers = $scope.sl_lockers;
        DBService.postCall($scope.formData, '/api/locker/store').then((data) => {
            if (data.success) {
                $scope.loading = false;

                $("#exampleModalCenter").modal("hide");
                $scope.entry_id = 0;
                $scope.formData = {
                    name:'',
                    mobile:"",
                    paid_amount:0,
                    no_of_day:'',
                    locker_id:'',
                };
                $scope.init();
                setTimeout(function(){
                    window.open(base_url+'/admin/locker/print/'+data.id,'_blank');
                }, 800);

            }
            $scope.loading = false;
        });
    }
    $scope.onCheckOut = function () {
        $scope.loading = true;
        DBService.postCall($scope.formData, '/api/locker/checkout-store').then((data) => {
            if (data.success) {
                $("#checkoutLokerModel").modal("hide");
                $scope.entry_id = 0;
                $scope.formData = {
                    name:'',
                    mobile:"",
                    total_amount:0,
                    paid_amount:0,
                    balance_amount:0,
                    hours_occ:0,
                    check_in:'',
                    check_out:'',
                };
                $scope.init();
            }
            $scope.loading = false;
        });
    }

    $scope.changeAmount = function(){
        var total_amount = 0;
        var amount = 70;
        if($scope.formData.no_of_day > 1){
            amount  = (amount + (($scope.formData.no_of_day-1)*105));
        }
        amount = amount*$scope.formData.no_of_bag;
        if($scope.entry_id == 0){
            $scope.formData.paid_amount = amount;
               
        }else{
            $scope.formData.balance_amount = amount - $scope.formData.paid_amount;
        }
    }

    $scope.delete = function (id) {
        if(confirm("Are you sure?") == true){
            DBService.getCall('/api/locker/delete/'+id).then((data) => {
                alert(data.message);
                $scope.init();
            });
        }
    }

    // $scope.insLocker = (locker_id) => {
    //     let idx = $scope.sl_lockers.indexOf(locker_id);
    //     if(idx == -1){
    //         $scope.sl_lockers.push(locker_id);
    //     }else{
    //         $scope.sl_lockers.splice(idx,1);
    //     }
    //     $scope.changeAmount();
    // }
});
app.controller('sittingCtrl', function($scope , $http, $timeout , DBService) {
    $scope.loading = false;
    $scope.formData = {
        no_of_adults:0,
        no_of_baby_staff:0,
        no_of_children:0,
        name:'',
        mobile:"",
        paid_amount:0,
        hours_occ:'',
    };    
    $scope.last_hour = 1;

    $scope.filter = {};

    $scope.entry_id = 0;
    $scope.total_upi_collection = 0;
    $scope.total_cash_collection = 0;
    $scope.total_collection = 0;

    $scope.last_hour_upi_total = 0;
    $scope.last_hour_cash_total = 0;
    $scope.last_hour_total = 0;

    $scope.check_shift = "";
    $scope.pay_types = [];
    $scope.hours = [];
    $scope.rate_list = {};
    $scope.checkout_process = false;

    
    $scope.init = function () {
        
        DBService.postCall($scope.filter, '/api/sitting/init').then((data) => {

            if (data.success) {
                $scope.pay_types = data.pay_types;
                $scope.hours = data.hours;
                $scope.entries = data.entries;
                $scope.rate_list = data.rate_list;
            }
        });
    }
    $scope.filterClear = function(){
        $scope.filter = {};
        $scope.init();
    }

    $scope.edit = function(entry_id){
        $scope.checkout_process = false;
        $scope.entry_id = entry_id;
        DBService.postCall({entry_id : $scope.entry_id}, '/api/sitting/edit-init').then((data) => {
            if (data.success) {
                $scope.last_hour += data.sitting_entry.hours_occ;
                $scope.formData = data.sitting_entry;
                $("#exampleModalCenter").modal("show");
            }
            
        });
    }    

    $scope.editCheckout = function(entry_id){
        $scope.entry_id = entry_id;
        DBService.postCall({entry_id : $scope.entry_id}, '/api/sitting/checkout').then((data) => {
            if (data.success) {
                alert("Successfully checkout!");
                $scope.formData = {
                    no_of_adults:0,
                    no_of_baby_staff:0,
                    no_of_children:0,
                    name:'',
                    mobile:"",
                    total_amount:0,
                    paid_amount:0,
                    balance_amount:0,
                    hours_occ:0,
                };
                $scope.init();
            }else{
                $scope.last_hour += data.sitting_entry.hours_occ;
                $scope.formData = data.sitting_entry;
                $scope.checkout_process = true;
                $scope.formData.hours_occ = data.ex_hours+ $scope.formData.hours_occ;
                $("#exampleModalCenter").modal("show");
                $scope.changeAmount();
            }
            
        });
    }

    $scope.add = function(){
        $scope.checkout_process = false;
        $("#exampleModalCenter").modal("show");    
    }

    $scope.hideModal = () => {
        $("#exampleModalCenter").modal("hide");
        $scope.entry_id = 0;
        $scope.formData = {
            no_of_adults:0,
            no_of_baby_staff:0,
            no_of_children:0,
            name:'',
            mobile:"",
            total_amount:0,
            paid_amount:0,
            balance_amount:0,
            hours_occ:0,
        };
        $scope.checkout_process = false;
    }

    $scope.onSubmit = function () {
        $scope.loading = true;
        // console.log($scope.formData);return;
        $scope.formData.checkout_process = $scope.checkout_process;
        DBService.postCall($scope.formData, '/api/sitting/store').then((data) => {
            if (data.success) {
                $("#exampleModalCenter").modal("hide");
                $scope.entry_id = 0;
                $scope.formData = {
                    no_of_adults:0,
                    no_of_baby_staff:0,
                    no_of_children:0,
                    name:'',
                    mobile:"",
                    total_amount:0,
                    paid_amount:0,
                    balance_amount:0,
                    hours_occ:0,
                    check_in:'',
                    check_out:'',
                };
                $scope.last_hour = 1;
                $scope.init();
                setTimeout(function(){
                    window.open(base_url+'/admin/sitting/print/'+data.id, '_blank');

                }, 800);
                $scope.checkout_process = false;

            } else {
                alert(data.message);
            }
            $scope.loading = false;
        });
    }

   
    $scope.changeAmount = function () {
        $scope.formData.total_amount = 0;

        if($scope.formData.hours_occ > 0){
            
            var hours = $scope.formData.hours_occ - $scope.last_hour; 

            if($scope.formData.no_of_adults > 0){
                $scope.formData.total_amount += $scope.rate_list.adult_rate * $scope.formData.no_of_adults;
                $scope.formData.total_amount += hours * $scope.rate_list.adult_rate * $scope.formData.no_of_adults;
            }

            if($scope.formData.no_of_children > 0){
                $scope.formData.total_amount += $scope.rate_list.child_rate * $scope.formData.no_of_children;
                $scope.formData.total_amount +=  hours * $scope.rate_list.child_rate * $scope.formData.no_of_children;
            }

        }
        $scope.formData.balance_amount = $scope.formData.total_amount;
        $scope.formData.total_amount += $scope.formData.paid_amount;

    }

    $scope.delete = function (id) {
        if(confirm("Are you sure?") == true){
            DBService.getCall('/api/sitting/delete/'+id).then((data) => {
                alert(data.message);
                $scope.init();
            });
        }
       
    }
});
app.controller('shiftCtrl', function($scope , $http, $timeout , DBService) {
    $scope.loading= false;
    $scope.sitting_data = [];
    $scope.cloak_data = [];
    $scope.canteen_data = [];
    $scope.filter = {
        input_date:'',
        user_id:'',
    }

    $scope.clear = function(){
        $scope.filter = {
            input_date:'',
            user_id:'',
        }
        $scope.init();
    }
    $scope.serach = function(){
        $scope.init();
    }

    $scope.users  = [];

    $scope.init = function () {
        $scope.loading = false;

        DBService.postCall($scope.filter, '/api/shift/init').then((data) => {
            if (data.success) { 

                $scope.users = data.users;                 
                
                $scope.sitting_data = data.sitting_data; 
                $scope.cloak_data = data.cloak_data; 
                $scope.canteen_data = data.canteen_data; 
               
                $scope.total_shift_upi = data.total_shift_upi ; 
                $scope.total_shift_cash = data.total_shift_cash ; 
                $scope.total_collection = data.total_collection ; 

                $scope.last_hour_upi_total = data.last_hour_upi_total ; 
                $scope.last_hour_cash_total = data.last_hour_cash_total ; 
                $scope.last_hour_total = data.last_hour_total ;

                $scope.check_shift = data.check_shift ; 
                $scope.shift_date = data.shift_date ; 
            }
            $scope.loading = true;
        });
    }    

    
});
app.controller('userCtrl', function($scope , $http, $timeout , DBService) {
    $scope.loading = false;
    $scope.formData = {
        name:'',
        email:'',
        mobile:'',
        password:'',
        confirm_password:'',
    };
    $scope.filter = {};
    $scope.user_id = 0;
    $scope.users = [];
 
    $scope.init = function () {
        DBService.postCall($scope.filter, '/api/users/init').then((data) => {
            $scope.users = data.users;
        });
    }
    $scope.filterClear = function(){
        $scope.filter = {};
        $scope.init();
    }

    $scope.edit = function(user_id){
        $scope.user_id = user_id;
        DBService.postCall({user_id : $scope.user_id}, '/api/users/edit-init').then((data) => {
            if (data.success) {
                $scope.formData = data.user;
                $("#userModal").modal("show");
            }
        });
    }

    $scope.hideModal = () => {
        $("#userModal").modal("hide");
        $scope.user_id = 0;
        $scope.formData = {
            name:'',
            email:'',
            mobile:'',
            password:'',
            confirm_password:'',
        };
        $scope.init();
    }

    $scope.add = () => {
        $("#userModal").modal("show");
        $scope.user_id = 0;
        $scope.formData = {
            name:'',
            email:'',
            mobile:'',
            password:'',
            confirm_password:'',
        };
    }

    $scope.onSubmit = function () {
        $scope.loading = true;
        DBService.postCall($scope.formData, '/api/users/store').then((data) => {
            if (data.success) {
                alert(data.message);
                $("#userModal").modal("hide");
                $scope.formData = {
                    name:'',
                    email:'',
                    mobile:'',
                    password:'',
                    confirm_password:'',
                };
                $scope.init();
            }else{
                alert(data.message);
            }
            $scope.loading = false;
        });
    }
});

app.controller('canteenItemsCtrl', function($scope , $http, $timeout , DBService) {
    $scope.loading = false;
    $scope.formData = {
        item_name:'',
        item_short_name:'',
        price:'',
    };
    $scope.stockData = {
        stock:'',
    };
    $scope.filter = {};
    $scope.canteen_item_id = 0;
    $scope.canteen_item_stock_id = 0;
    $scope.canteen_items = [];
 
    $scope.init = function () {
        DBService.postCall($scope.filter, '/api/canteen-items/init').then((data) => {
            $scope.canteen_items = data.canteen_items;
        });
    }
    $scope.filterClear = function(){
        $scope.filter = {};
        $scope.init();
    }

    $scope.edit = function(canteen_item_id){
        $scope.canteen_item_id = canteen_item_id;
        DBService.postCall({canteen_item_id : $scope.canteen_item_id}, '/api/canteen-items/edit').then((data) => {
            if (data.success) {
                $scope.formData = data.canteen_item;
                $("#exampleModalCenter").modal("show");
            }
        });
    }

    $scope.hideModal = () => {
        $("#exampleModalCenter").modal("hide");
        $scope.canteen_item_id = 0;
        $scope.formData = {
            item_name:'',
            item_short_name:'',
            price:'',
        };
        $scope.init();
    }

    $scope.add = () => {
        $("#exampleModalCenter").modal("show");
        $scope.canteen_item_id = 0;
        $scope.formData = {
            item_name:'',
            item_short_name:'',
            price:'',
        };
    }

    $scope.onSubmit = function () {
        console.log($scope.formData);
        $scope.loading = true;
        DBService.postCall($scope.formData, '/api/canteen-items/store').then((data) => {
            if (data.success) {
                alert(data.message);
                $("#exampleModalCenter").modal("hide");

                $scope.formData = {
                    item_name:'',
                    item_short_name:'',
                    price:'',
                };
                $scope.init();
            }else{
                alert(data.message);
            }
            $scope.loading = false;
        });
    }

    $scope.initStocks = function () {
        $scope.filter.canteen_item_id = $scope.canteen_item_id;
        console.log($scope.filter+'hello');
        DBService.postCall($scope.filter, '/api/canteen-items/stocks/init').then((data) => {
            $scope.item_stocks = data.item_stocks;
        });
    }

    $scope.hideStockModal = () => {
        $("#stockModal").modal("hide");
        $scope.stockData = {
            stock:'',
        };
        $scope.initStocks();
    }

    $scope.addStock = () => {
        $("#stockModal").modal("show");
        $scope.stockData = {
            stock:'',
        };
    }

    $scope.editStock = function(canteen_item_stock_id){
        $scope.canteen_item_stock_id = canteen_item_stock_id;
        DBService.postCall({canteen_item_stock_id : $scope.canteen_item_stock_id}, '/api/canteen-items/stocks/edit').then((data) => {
            if (data.success) {
                $scope.stockData = data.item_stock;
                $("#stockModal").modal("show");
            }
        });
    }

    $scope.onStockSubmit = function () {
        $scope.loading = true;
        $scope.stockData.canteen_item_id = $scope.canteen_item_id;
        DBService.postCall($scope.stockData, '/api/canteen-items/stocks/store').then((data) => {
            if (data.success) {
                alert(data.message);
                $("#stockModal").modal("hide");

                $scope.stockData = {
                    stock:'',
                };
                $scope.initStocks();
            }else{
                alert(data.message);
            }
            $scope.loading = false;
        });
    }
});

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


    // $scope.total_amount= 0;
    $scope.filter = {};
    $scope.entry_id = 0;
    $scope.daily_entries = [];
    $scope.canteen_items = [];

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
        $("#exampleModalCenter").modal("show");
        $scope.entry_id = 0;
        $scope.formData = {
            name:'',
            mobile:'',
            items:[],
        };
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
        // console.log($scope.product);

        // var total_amount = $scope.total_amount;
        let products = $scope.products;

        var my_item = null;
        for (let i = 0; i < $scope.canteen_items.length; i++) {
            let c_item = $scope.canteen_items[i];
            if (c_item.canteen_item_id == $scope.product.canteen_item_id) {
                my_item = c_item;
            }
        }
        let index = -1;

        for (var i = 0; i < products.length; i++) {
            let c_product = products[i];
            if(c_product.canteen_item_id == $scope.product.canteen_item_id){
                index = i;
            }
        }

        if (index == -1) {
            my_item.paid_amount = my_item.price*$scope.product.quantity;
            my_item.quantity = $scope.product.quantity;
            products.push(my_item);
        } else {
            // total_amount += my_item.price*$scope.product.quantity;
            $scope.products[index].quantity += $scope.product.quantity;
            $scope.products[index].paid_amount = my_item.price*$scope.products[index].quantity;
        }

        $scope.product = {
            canteen_item_id:0,
            item_name:'',
            quantity:'',
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

    }

    $scope.editItem = (index) => {
        $scope.product = $scope.products[index];
        $scope.products.splice(index,1);
    }

});







