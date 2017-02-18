<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="/WEB-INF/views/header.jsp" %>
    
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Signedin</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style>
/* header {
	background-color: #27A4F7;
	color: white;
	padding: 10px 50px 40px 50px;
}

body {
	background-color: white;
}

button {
	background-color: white;
	color: #27A4F7;
	width: 180px;
}


.carousel-inner>.item>img {
	width: 1500px;
	height: 400px;
}

form {
	color: white;
} */
</style>
</head>
<body>

<c:choose>

<c:when test="${not empty isProductClicked && not empty userloggedin}">
<%@ include file="/WEB-INF/views/productDetails.jsp" %>
</c:when>

<c:otherwise>
<%@ include file="/WEB-INF/views/listOfProducts.jsp" %>
</c:otherwise>

</c:choose>


</body>
</html>