
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Category</title>
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
<h3 style="text-align:center">List of Categories</h3>
<table width="1000" align="center">
	<tr>
	    <th align="left">S.No</th>
		<th align="left">Id</th>
		<th align="left">Name</th>
		<th align="left">Description</th>
		<th align="left">Edit</th>
		<th align="left">Delete</th>
		
	</tr>
	<c:forEach items="${categoryList}" var="category" varStatus="status">
		<tr>
			<td>${status.count}</td>
			<td>${category.id}</td>
			<td>${category.name}</td>
			<td>${category.description}</td>
			<td><a href="editcategory/${category.id}">edit</a></td>
			<td><a href="deletecategory/${category.id}" onclick="return confirm('Are You Sure? Do you Want Delete Category : ${category.name} ?')">delete</a></td>
		</tr>
	</c:forEach>
</table>

</body>
</html>