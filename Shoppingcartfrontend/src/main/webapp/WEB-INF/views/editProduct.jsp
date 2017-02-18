<%@ include file="/WEB-INF/views/header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Product</title>
</head>
<body>
<div class="container" >
		<div class="jumbotron" style="background-color:#EAECEE">
			
			<h3 align="center" style="color: #27A4F7">Edit your product</h3>

			<form action="../editProduct"class="form-horizontal"  method="post"  role="form" name="Product">
				
				<div style="color: #27A4F7" class="form-group">
					<label for="text">Id :</label> 
					<input class="form-control"  type="text"  id="product_Id" name="product_Id" value="${product.product_Id}" readonly>
				</div>
				
				<div style="color: #27A4F7" class="form-group">
					<label for="text">Name :</label> 
					<input class="form-control" placeholder="Enter the name of the product" type="text"  id="product_Name" name="product_Name" value="${product.product_Name}">
				</div>
				
				<div style="color: #27A4F7" class="form-group">
					<label for="text">Description :</label> 
					<input  class="form-control" placeholder="Enter description of the product" type="text"  id="description" name="description" value="${product.description}" >
				</div>
				
				<div style="color: #27A4F7" class="form-group">
					<label for="text">Category :</label> 
					<input  class="form-control" placeholder="Enter category of the product" type="text"  id="category" name="category" value="${product.category}" >
				</div>
				
				<div style="color: #27A4F7" class="form-group">
					<label for="text">Supplier :</label> 
					<input  class="form-control" placeholder="Enter Supplier of the product" type="text"  id="supplier_Name" name="supplier_Name" value="${product.supplier_Name}">
				</div>
				
				
				
				<div style="color: #27A4F7" class="form-group">
					<label for="text">Stock :</label> 
					<input  class="form-control" placeholder="Enter stock of the product" type="text"  id="product_Stock" name="product_Stock" value="${product.product_Stock}">
				</div>
				
				<div style="color: #27A4F7" class="form-group">
					<label for="text">Price :</label> 
					<input  class="form-control" placeholder="Enter price of the product" type="text"  id="product_Price" name="product_Price" value="${product.product_Price}">
				</div>
				
				<button style="background-color: #27A4F7;color:white" type="submit" value="submit" class="btn btn-default">Upload</button>
				
				</form>

</body>
</html>