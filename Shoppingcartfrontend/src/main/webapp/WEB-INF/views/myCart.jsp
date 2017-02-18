<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Cart</title>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="resources/js/cartcontroller.js"></script>
</head>
 <%@ include file="/WEB-INF/views/header.jsp" %>
 
<body ng-app="addToCartApp" ng-controller="addToCartCtrl">
 <table class="table" >
		 
			  <tr>
				
				<th>Image</th>
				<th class="">Productname</th>
			
				<th>Quantity</th>
				<th>Price(in Rs.)</th>
				<th>Action</th>
			  </tr>
			
			<c:forEach items="${cartList}" var="items">
				<tr>
					 	<td class="span1"><img height="80px" width="100px" src="<c:url value="/resources/img/product/${items.product_Id}.jpg" /> " alt="${items.product_Id}"/></td> 
					 	 
						<td>${items.product_Name}</td>
						
						<td>${items.quantity}</td>
						<td>${items.price}</td>
						<td><a href="#"	 class="btn btn-danger btnAction" ng-click="removeItemFromCart('${items.cartid}')">
							<span class="glyphicon glyphicon-trash"></span>remove</a></td>
					</tr>
					</c:forEach>
			  <tr>
                    <td></td>
                    <td></td>
					<td></td>
                    <td>Grand Total(in INR)</td>
              <td>${total}</td>  
                    <td>
                </tr>
               
			
		  </table>
		  <div class="container">
		  <center>
		  <table>
		   <tr> <td>
                        <button type="button" class="btn btn-success">
                            Continue Shopping<span class="glyphicon glyphicon-play"></span>
                        </button>
                      
                         <a href="../order/${username}"><button type="button" class="btn btn-success">
                            BuyNow <span class="glyphicon glyphicon-briefcase"></span>
                        </button></a>
                      
                         <button type="button" class="btn btn-danger">
                            Cancel <span class="glyphicon glyphicon-remove"></span>
                        </button>
                        </td></tr>
                        </table>
                </center>
                </div>	
                </body>
                </html>
                  
