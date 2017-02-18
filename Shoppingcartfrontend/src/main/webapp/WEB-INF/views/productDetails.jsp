<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/WEB-INF/views/header.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ProductDetails</title>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="<c:url value="/resources/js/cartcontroller.js"/>"></script>
</head>
<body ng-app="addToCartApp" ng-controller="addToCartCtrl">
	<h2 align="center"
		>${product.product_Name}</h2>


	<div>

		
			<table>
				<tr>
					<td><img class="image"
						src="<c:url value="/resources/img/product/${product.product_Id}.jpg"/>"
						alt="${product.product_Id}"
						style="align: left; position: fixed; bottom: 30px; right: 900px; width: 450px; height: 400px">

					</td>
				</tr>
				<p>
					${outOfStock} <b>Product Name :</b> ${product.product_Name}<br>
					<br> <b>Product Description :</b> ${product.description}<br>
					<br> <b>Product Price :</b> ${product.product_Price}<br>
					<br> <b>Product Available :</b> ${product.product_Stock}<br>
					<br>
				</p>
				
					<input type="button" class="add-to-cart btn btn-warning" ng-click="addtocart('${product.product_Id}')" value="add to cart" 
					  style="position: fixed; bottom: 100px; right: 250px; width: 350px;">
				<!-- <button type="button" class="btn btn-success" onclick="goBack()"
					style="position: fixed; bottom: 100px; right: 150px; width: 250px;">Purchase</button> -->

			</table>
		

	</div>


</body>
</html>