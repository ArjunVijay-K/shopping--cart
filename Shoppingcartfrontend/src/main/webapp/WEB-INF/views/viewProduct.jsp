<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>product view</title>
</head>
<body>
<style>
table {
    font-family: arial, sans-serif;
   
    
    border-spacing: 15px;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 5px;
    
    
}

tr:nth-child(even) {
    background-color: #dddddd;
}
</style>

<h3 style="text-align:center">List of available Products</h3>

<table width="1000" align="center">
	<tr>
 <th align="left">S.No</th>
		<th align="left">Id</th>
		<th align="left">Name</th>
		<th align="left">Description</th>
		<th align="left">Price</th>
		<th align="left">Stock</th>
		<th align="left">Supplier</th>
		<th align="left">Category</th>
		<th align="left">Edit</th>
		<th align="left">Delete</th>
	</tr>
	 <c:forEach items="${productList}" var="product" varStatus="status"> 
		<td align="left">${status.count}</td>
			<td align="left">${product.product_Id}</td>
			<td align="left">${product.product_Name}</td>
			<td align="left">${product.description}</td>
			<td align="left">${product.product_Price}</td>
			<td align="left">${product.product_Stock}</td>
			<td align="left">${product.supplier_Name}</td>
			<td align="left">${product.category}</td>
			<td align="left"><a href="editProduct/${product.product_Id}">Edit</a></td>
			<td align="left"><a href="deleteProduct/${product.product_Id}" onclick="return confirm('Are You Sure? Do you Want Delete Product : ${product.product_Name} ?')">Delete</a></td>
		</tr>
	 </c:forEach>
</body>
</html>