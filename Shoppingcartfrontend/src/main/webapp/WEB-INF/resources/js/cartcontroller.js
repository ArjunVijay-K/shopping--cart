var cartApp = angular.module ("addToCartApp", []);

cartApp.controller("addToCartCtrl", function ($scope, $http){
	
	 $scope.retrieveCart = function (email) {
	        $scope.email = email;
	        $scope.refreshCartItems(email);
	    };
	    
	    $scope.refreshCartItems = function (email) {
	        $http.get('http://localhost:8085/Shoppingcartfrontend/refreshcart/'+email).success(function (data) {
	        console.log(data);
	           $scope.cart=data;
	           alert("view Cart!")
	        });
	    };
	    
	    $scope.addtocart = function(itemId){
	    	 $http.put('http://localhost:8085/Shoppingcartfrontend/addtocart/'+itemId).success(function () {
	          
	         });
	    } 
	
  $scope.removeItemFromCart=function(cart_id){
	    	
	    	$http.delete('http://localhost:8085/Shoppingcartfrontend/removeItemFromCart/' + cart_id).success(function () {
	    		alert("Removed from cart")
	    	/*	$scope.refreshCartItems();*/
	    	});
	  }
	    $scope.GrandTotalOfItems = function () {
	        var grandTotal=0;

	        for (var i=0; i<$scope.cart.length; i++) {
	            grandTotal+=$scope.cart[i].price;
	       }

	        return grandTotal;
	    };
});
