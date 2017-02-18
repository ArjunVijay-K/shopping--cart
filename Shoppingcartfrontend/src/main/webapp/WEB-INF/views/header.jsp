<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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

p {
	position: fixed;
	top: 250px;
	right: 10px;
	width: 700px;
}

.title{;
       top:50px;
        left:15px;}

header {
	background-color:#0A0F32 ;
	color: white;
	width: 1380px;
	height: 150px;
	}

body {
	background-color: white;
}

button {
	background-color: white;
	color: #27A4F7;
	width: 180px;
}
form {
	color: white;
	
}


.sub-menu-parent {

	position: relative;
	right: 6em;
	top: 80px;
	}

.sub-menu {
	visibility: hidden; /* hides sub-menu */
	opacity: 0;
	position: absolute;
	top: 100%;
	left: 0;
	width: 125%;
	transform: translateY(-2em);
	z-index: -1;
	transition: all 0.3s ease-in-out 0s, visibility 0s linear 0.3s, z-index
		0s linear 0.01s;
}

.sub-menu-parent:hover .sub-menu {
	visibility: visible; 
	opacity: 1;
	z-index: 1;
	transform: translateY(0%);
	transition-delay: 0s, 0s, 0.3s;
	}
	
	body {
	
/* 	font: 18px/2 sans-serif; */
    
}

nav a {
	color: white;
	display: block; 
	 padding: 1em 1.5em; 
	 text-decoration: none; 
	
}

nav a:hover {
	color: orange;
	
}

nav ul, nav ul li {
	list-style-type: none;
    padding: 0em;
	margin: 0em; 
	text-align:center;
} 

nav>ul {
	
	text-align: center;
}

nav>ul>li {
	display: inline-block;
	border-left: solid 0.5px #aaa;
}

nav>ul>li:first-child {
	border-left: none;
}

.sub-menu {
	background: #0A0F32;
	color: white;
	align:center;
	text-align: center;

</style>
</head>
<body>
	<header  >



			<a position="static" align="left" style="font-family: Comic Sans MS, Comic Sans, cursive; color: #27A4F7; font-size: 25px;"
				class="navbar-brand" href="home"><b>Electromart</b> </a>
	

		<div align="right" style="position: fixed; top: 15px;right:2em ">
			<c:if test="${pageContext.request.userPrincipal.name == null }">
				<a href="getregistration" style="color: white"><span
					class="glyphicon glyphicon-user"></span> Signup </a>
				<a href="loginpage" style="color: white; align: center"><span
					class="glyphicon glyphicon-log-in"></span> Login </a>
			</c:if>


			<c:if
				test="${pageContext.request.userPrincipal.name != 'admin@gmail.com' && pageContext.request.userPrincipal.name !=null }">

				<a style="color: white" href="viewcart/${userId}"><span
					class="glyphicon glyphicon-shopping-cart">Cart</span></a>

			</c:if>

			<c:if test="${pageContext.request.userPrincipal.name != null }">

				<a style="color: white"
					href="<c:url value="/j_spring_security_logout"/>"><span
					class="glyphicon glyphicon-log-out"></span>Logout</a>


			</c:if>
		</div>
		<br>
		<c:if test="${pageContext.request.userPrincipal.name != null }">
		<p class="title">Welcome, ${pageContext.request.userPrincipal.name}</p>
		</c:if>

		<c:if
			test="${pageContext.request.userPrincipal.name =='admin@gmail.com' }">
			<nav>
				<ul >
					<li class="sub-menu-parent"><a style="color:white; text-align: center;" href="#">Category</a>
						<ul class="sub-menu">
							<li><a href="Categoryform">New Category</a></li>
							<li><a href="Viewcategory">ViewCategory</a></li>
						</ul></li>

					<li class="sub-menu-parent"><a style="color: white" href="#">Product</a>
						<ul class="sub-menu">
							<li><a href="Productform">New Product</a></li>
							<li><a href="viewProduct">View Product</a></li>
						</ul></li>

					<li class="sub-menu-parent"><a style="color: white" href="#">Supplier</a>
						<ul class="sub-menu">
							<li><a href="Supplierform">New Supplier</a></li>
							<li><a href="viewSupplier">View Supplier</a></li>
						</ul></li>


				</ul>
			</nav>

		</c:if>

		<a> </a>

		<c:if
			test="${pageContext.request.userPrincipal.name != 'admin@gmail.com' && pageContext.request.userPrincipal.name !=null || pageContext.request.userPrincipal.name ==null }">

			<nav>
				<ul >
					<li class="sub-menu-parent"><a style="color: white" href="#">Television</a>
						<ul class="sub-menu">
							<li><a href="#">HD</a></li>
							<li><a href="#">Ultra HD</a></li>
							<li><a href="#">Smart </a></li>

						</ul></li>
					<li class="sub-menu-parent"><a style="color: white" href="#">Refrigerator</a>
						<ul class="sub-menu">
							<li><a href="#">SingleDoor</a></li>
							<li><a href="#">DoubleDoor</a></li>
							<li><a href="#">TripleDoor</a></li>
							<li><a href="#">SidebySide</a></li>

						</ul></li>
					<li class="sub-menu-parent"><a style="color: white" href="#">AirConditioner</a>
						<ul class="sub-menu">
							<li><a href="#">Split ACs</a></li>
							<li><a href="#">Split ACs</a></li>
						</ul></li>

					<li class="sub-menu-parent"><a style="color: white" href="#">WashingMachine</a>
						<ul class="sub-menu">
							<li><a href="#">FullyAutomaticTopLoad</a></li>
							<li><a href="#">SemiAutomaticTopLoad</a></li>
							<li><a href="#">FullyAutomaticFrontLoad</a></li>
							<li><a href="#">SidebySide</a></li>
						</ul></li>
					<li class="sub-menu-parent"><a style="color: white" href="#">Fan</a>
						<ul class="sub-menu">
							<li><a href="#">Ceiling Fan</a></li>
							<li><a href="#">Table Fan</a></li>
							<li><a href="#">Wall Fan</a></li>
							<li><a href="#">Exhaust Fan</a></li>
						</ul></li>
					<li class="sub-menu-parent"><a style="color: white" href="#">Kitchen
							Appliances</a>

						<ul class="sub-menu">
							<li><a href="#">Mixer-Grinder</a></li>
							<li><a href="#">Wet-Grinder</a></li>
							<li><a href="#">MicroWave-oven</a></li>
							<li><a href="#">Exhaust Fan</a></li>
						</ul></li>
					
				</ul>
			</nav>
			
			


		</c:if>
		
		<c:if
			test="${pageContext.request.userPrincipal.name != 'admin@gmail.com' && pageContext.request.userPrincipal.name !=null || pageContext.request.userPrincipal.name ==null }">
		



					</c:if>


	</header>