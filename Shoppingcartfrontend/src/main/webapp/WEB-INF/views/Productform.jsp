<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ include file="/WEB-INF/views/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product</title>
<script>
	function productForm() {
		// Make quick references to our fields
		var productname = document.getElementById('product_Name');
		var description = document.getElementById('description');
		var category = document.getElementById('category');
		var supplier = document.getElementById('supplier_Name')
		var stock = document.getElementById('product_Stock')
		var price = document.getElementById('product_Price');
		var file = document.getElementById('file');
		// Check each input in the order that it appears in the form!
		if (notEmpty(productname, " Enter a name for the product!!")) {
	   if (notEmpty(description, "Give a small discription about the product!!")) {
				if (notEmpty(stock, "Enter the stock of the product!!")) {
				if (notEmpty(price, "Enter the price of the product!!")) {
										
										return true;
									}
								}
						}		
		}
		return false;
	}

	function notEmpty(elem, helperMsg) {
		if (elem.value.length == 0) {
			alert(helperMsg);
			elem.focus(); // set the focus to this input
			return false;
		}
		return true;
	}
	
	
	
</script>

</head>
<body>

<div class="container" >
		<div class="jumbotron" style="background-color:#EAECEE">
			
			<h3 align="center" style="color: #27A4F7">Add a new product</h3>

			<form action="newproduct"class="form-horizontal"  method="post" enctype="multipart/form-data"  role="form" name="newproduct" onsubmit="return productForm()">
				<div style="color: #27A4F7" class="form-group">
					<label for="text">Name :</label> 
					<input class="form-control" placeholder="Enter the name of the product" type="text"  id="product_Name" name="product_Name" >
				</div>
				
				<div style="color: #27A4F7" class="form-group">
					<label for="text">Description :</label> 
					<input  class="form-control" placeholder="Enter description of the product" type="text"  id="description" name="description" >
				</div>
				
				<div style="color: #27A4F7" class="form-group">
					<label for="text">Category :</label> 
					
					<select class="form-control" id="category" name="category">
					<option>Select Category</option>
					<c:forEach items="${categoryList}" var="category">
					
					<option value="${category.name }">${category.name }</option>
					
					</c:forEach>
					</select>
				</div>
				
				<div style="color: #27A4F7" class="form-group">
					<label for="text">Supplier :</label> 
				
					<select class="form-control" id="supplier_Name" name="supplier_Name">
					<option>Select Supplier</option>
					<c:forEach items="${supplierList}" var="supplier">
					
					<option value="${supplier.name}">${supplier.name}</option>
					
					</c:forEach>
					</select>
				</div>
				
				
				
				<div style="color: #27A4F7" class="form-group">
					<label for="text">Stock :</label> 
					<input  class="form-control" placeholder="Enter stock of the product" type="text"  id="product_Stock" name="product_Stock" >
				</div>
				
				<div style="color: #27A4F7" class="form-group">
					<label for="text">Price :</label> 
					<input  class="form-control" placeholder="Enter price of the product" type="text"  id="product_Price" name="product_Price" >
				</div>
				
				<div style="color: #27A4F7" class="form-group">
					<label for="text">Image :</label> 
					<input  type="file"   name="file" >
				</div>
				
				
				
				<button style="background-color: #27A4F7;color:white" type="submit" value="submit" class="btn btn-default">Upload</button>
				
				</form>

</body>
</html>