<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/views/header.jsp"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Log in</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
.button {
  border-radius: 15px;
  background-color: #196F3D;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 15px;
  padding: 6px;
  width: 90px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
.jumbotron{
color:#0A0F32;
width:50em; 
position:fixed;
top:15em;
left:25em;} 
button {
	color: #27A4F7;
}

body{background-image: linear-gradient(rgb(104, 145, 162), rgb(12, 97, 33));
}
</style>


</head>
<body >

	<div class="container">
		<div class="jumbotron" style="background-color: #EAECEE">


			<h3 align="center" style="color: #2E4053">Log in continue</h3>
			<form text-align="center" action="loginpage" method="post">

				<div style="color: #424949  " class="form-group">
					<label for="email"><span class="glyphicon glyphicon-user"></span>
						Username:</label> <input type="email" class="form-control" id="email"
						name="emailid" placeholder="Enter your email id">
				</div>
				<div style="color: #424949  " class="form-group">
					<label for="pwd"><span class="glyphicon glyphicon-lock"></span>Password:</label>
					<input type="password" class="form-control" id="pwd"
						name="password" placeholder="Enter your password">
				</div>

				<button type="submit" class="button" "><span>Sign In </span></button>
				<h4 style="color: black;">${message}${error}${logout }</h4>
			</form>
			<br> If you don't have an account<a href="getregistration">
				SIGNUP </a>
		</div>
	</div>
</body>
</html>
