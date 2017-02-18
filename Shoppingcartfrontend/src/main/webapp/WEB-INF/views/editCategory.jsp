<%@ include file="/WEB-INF/views/header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Category</title>
<style>
.jumbotron {
	background-color: white;
	color: #27A4F7;
}

button {
	background-color: white;
	color: #27A4F7;
	width: 180px;
}





}
</style>

</head>
<body>
<div class="container" style="color: #1F618D">
		<div class="jumbotron" style="background-color:#EAECEE">
			
			<h3 align="center" style="color: #27A4F7">Edit  your category</h3>
			<form action="../editCategory"class="form-horizontal"  method="post"   role="form" name="category">
				<div style="color: #27A4F7" class="form-group">
					<label for="text">Id of the category:</label> 
					<input class="form-control"  type="text"  id="id" name="id" value="${category.id}" readonly>
				</div>

			
				<div style="color: #27A4F7" class="form-group">
					<label for="text">Name of the category:</label> 
					<input class="form-control" placeholder="Enter the name of the category" type="text"  id="name" name="name" value="${category.name}">
				</div>
				<div style="color: #27A4F7" class="form-group">
					<label for="text">Description about category:</label> 
					<input name="description"class="form-control" placeholder="Description" type="text"  id="description" value="${category.description}" >
				</div>
				
				<button style="background-color: #27A4F7;color:white" type="submit" value="submit" class="btn btn-default">Upload</button>
				
				</form>
				</div>
				</div>
</body>
</html>