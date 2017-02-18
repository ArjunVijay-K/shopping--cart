<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="/WEB-INF/views/header.jsp" %>
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
    background-color: #283747;
}
</style>
</head>

<body>

<c:forEach items="${shippngAddressList}" var="product" varStatus="status"> 
		<td align="left">${status.count}</td>
			<td align="left">${ShippingAddress.usersId}</td>
			<td align="left">${ShippingAddress.username}</td>
			<td align="left">${ShippingAddress.mobilenumber}</td>
			<td align="left">${ShippingAddress.emailid}</td>
			<td align="left">${ShippingAddress.address}</td>
			
			<%-- <td align="left"><a href="editAddress/${}">Add</a></td>
			<td align="left"><a href="Continue/${}" onclick="return confirm('Are You Sure? Do you Want Delete Product : ${product.product_Name} ?')">Continue</a></td> --%>
		</tr>
	 </c:forEach>
<%-- <div class="container">
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <div class="panel panel-primary">
                <div class="panel-heading">ShippingAddress</div>
                <div class="panel-body">
                    <form role="form" method="post"  >
                    
                        <label for="username">UserName</label>
                        <input type="text" id="username" class="form-control" name="username" placeholder="Example: John">
              	          
              	         <label for="emailid">Email id</label>
                        <input type="text" id="emailid" class="form-control" name="emailid" placeholder="Example: john@gmail.com">
              	            
              	          
                        <label for="mobile_number" class="m-t-10">MobileNumber</label>
                        <input type="text" id="mobile_number" class="form-control" name="mobile_number" placeholder=" ">
                        
                        <label for="price" class="m-t-10">Price</label>
                        <input type="text" id="price" class="form-control" name="price" placeholder="">
                        
                        <label for="address" class="m-t-10">Address</label>
                        <input type="text" id="address" class="form-control" name="address" placeholder="Your Address">
                        
                        <label for="city" class="m-t-10">City</label>
                        <input type="text" id="city" class="form-control" name="city" placeholder="">
                        
                        <label for="zipcode" class="m-t-10">Zipcode</label>
                        <input type="text" id="zipcode" class="form-control" name="zipcode" placeholder="">
                        
                        <center><input type="submit" class="btn btn-primary m-t-10"  name="_eventId_pay" value="Next"></a></center>
                        
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
 --%>
</body>
</html>