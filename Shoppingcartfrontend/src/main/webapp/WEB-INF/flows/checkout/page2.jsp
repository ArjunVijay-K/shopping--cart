<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
	
<style>
body {
    background-color: steelblue;
}
</style>
</head>
<body>

<div class="container">
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <div class="panel panel-primary">
                <div class="panel-heading">Payment</div>
                <div class="panel-body">
                    <form role="form" method="post" >
                    
                        <label for="cardholder_name">CardHolder Name</label>
                        <input type="text" id="cardholder_name" class="form-control" name="cardholder_name" placeholder="Example: John">
              	          
              	         <label for="card_number">CardNumber</label>
                        <input type="text" id="card_number" class="form-control" name="card_number" placeholder="">
              	            
              	          
                        <label for="cvv_number" class="m-t-10">CVV Number</label>
                        <input type="text" id="cvv_number" class="form-control" name="cvv_number" placeholder=" ">
                        
                        <label for="cardtype" class="m-t-10">CardType</label>
                        <input type="text" id="cardtype" class="form-control" name="cardtype" placeholder="">
                        
                      
                        
                        <center><input type="submit" class="btn btn-primary m-t-10"  name="_eventId_pay" value="Back"></center>
                          <center><input type="submit" class="btn btn-primary m-t-10"  name="_eventId_thanku" value="submit"></center>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>