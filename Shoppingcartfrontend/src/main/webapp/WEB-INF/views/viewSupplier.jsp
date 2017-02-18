<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Viewsupplier</title>
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
</head>
<body>
<h3 style="text-align:center">List of available Suppliers</h3>

<table width="1000" align="center">
	<tr>
	    <th align="center">S.No</th>
		<th align="center">Id</th>
		<th align="center">Name</th>
		<th align="center">PhoneNo</th>
		<th align="center">EmailId</th>
		<th align="center">Address</th>
		<th align="center">Edit</th>
		<th align="center">Delete</th>
	</tr>
	<c:forEach items="${supplierList}" var="supplier" varStatus="status">
		<tr>
			<td>${status.count}</td>
			<td>${supplier.id}</td>
			<td>${supplier.name}</td>
			<td>${supplier.phoneNo}</td>
			<td>${supplier.emailId}</td>
			<td>${supplier.address}</td>
			<td><a href="editSupplier/${supplier.id}">Edit</a></td>
			<td><a href="deleteSupplier/${supplier.id}" onclick="return confirm('Are you Sure? Do you Want Delete Supplier : ${supplier.name} ?')">Delete</a></td>
		</tr>
	</c:forEach>
</table>
</body>
</html>