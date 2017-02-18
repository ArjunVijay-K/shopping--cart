<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="/WEB-INF/views/header.jsp" %>
<html>
<head>
<title>Electromart</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<style>
.carousel-inner>.item>img {
position:static;

top:35em;

	width: 1500px;
	height: 400px;
}




form {
	color: white;
}
</style>
</head>
<body>
        <c:if
			test="${pageContext.request.userPrincipal.name != 'admin@gmail.com' && pageContext.request.userPrincipal.name !=null || pageContext.request.userPrincipal.name ==null }">
		<div " id="myCarousel" class="carousel slide" data-ride="carousel">
		<div style="navbar:fixed;" >
		
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
			<li data-target="#myCarousel" data-slide-to="4"></li>
			<li data-target="#myCarousel" data-slide-to="5"></li>
		</ol>
		</div>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="<c:url value="/resources/img/hdtv.jpg"/>" alt="HD TVs"
					width="300px" height="600px">
			</div>

			<div class="item">
				<img src="<c:url value="/resources/img/refrigerator.jpg"/>"
					alt="Refrigerators" width="1000" height="300">
			</div>

			<div class="item">
				<img src="<c:url value="/resources/img/wama.jpg"/>"
					alt="Washing Machine" width="1000" height="300">
			</div>

			<div class="item">
				<img src="<c:url value="/resources/img/ac.jpg"/>"
					alt="Air Conditioners">
			</div>
			
			<div class="item">
				<img src="<c:url value="/resources/img/micoven.jpg"/>"
					alt="oven" width="1000" height="300">
			</div>
			
			<div class="item">
				<img src="<c:url value="/resources/img/mixer.jpg"/>"
					alt="mixi" width="1000" height="300">
			</div>
			<div class="item">
				<img src="<c:url value="/resources/img/grind.jpg"/>"
					alt="mixi" width="1000" height="300">
			</div>
		</div>

		<!-- Left and right controls -->
		<a class=" carousel-control left" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left" 
			style="height:23em;navbar:fixed;top:7em;"></span>

		</a> <a class=" carousel-control right" href="#myCarousel" role="button"
			data-slide="next" > <span
			class="glyphicon glyphicon-chevron-right" style="height:23em;navbar:fixed;top:7em;"></span>

		</a>
	</div>
	</c:if>
<%@ include file="/WEB-INF/views/listOfProducts.jsp" %>
</body>
</html>

