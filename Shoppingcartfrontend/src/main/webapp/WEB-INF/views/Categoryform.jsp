<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="/WEB-INF/views/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>category</title>

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
			
			<h3 align="center" style="color: #27A4F7">Create a new category</h3>

			<form action="newCategory"class="form-horizontal"  method="post" action="newUser"  role="form" name="category">
				<div style="color: #27A4F7" class="form-group">
					<label for="text">Name of the category:</label> 
					<input  name="name"class="form-control" placeholder="Enter the name of the category" type="text"  id="categoryname" name=" categoryname" >
				</div>
				<div style="color: #27A4F7" class="form-group">
					<label for="text">Description about category:</label> 
					<input  name="description"class="form-control" placeholder="Description" type="text"  id="desctription"  >
				</div>
				
				<button style="background-color: #27A4F7;color:white" type="submit" value="submit" class="btn btn-default">Upload</button>
				
				</form>

</body>
</html>