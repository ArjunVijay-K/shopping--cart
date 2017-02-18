<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/views/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Registration</title>
<style>
button {
	color: #27A4F7;
}
body{background-image: linear-gradient(rgb(104, 136, 162), rgb(12, 97, 33));}
.jumbotron{
color:#0A0F32;
width:45em; 
position:relative;
top:2em;
left:15em;}
</style>

<script>
	function formRegister() {
		// Make quick references to our fields
		var username = document.getElementById('username');
		var email = document.getElementById('email');
		var password = document.getElementById('password');
		var confirmpassword = document.getElementById('confirmpassword')
		var mobilenumber = document.getElementById('mobilenumber');
		var address = document.getElementById('address');
		// Check each input in the order that it appears in the form!
		if (notEmpty(username, "username Should not be empty")) {
			if (isAlphabet(username, "Please enter only letters for Username")) {
				if (notEmpty(email, "EmailId Should not be empty")) {
					if (notEmpty(password, "password Should not be empty")) {
						if (isAlphanumeric(password, "Numbers and Letters Only for Passwords")) {
							
							if (notEmpty(mobilenumber, "PhoneNumber Should not be empty")) {
								if (isNumeric(mobilenumber, "Please enter only numbers for PhoneNumber")) {
									if (notEmpty(address, "address Should not be empty")) {
										if (password!=confirmpassword()){
											alert("Password is incorrect!");
											return false;
										}

										return true;
									}
								}
							}
						}
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
	function isNumeric(elem, helperMsg) {
		var numericExpression = /^[0-9]+$/;
		if (elem.value.match(numericExpression)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
	function isAlphabet(elem, helperMsg) {
		var alphaExp = /^[a-z A-Z]+$/;
		if (elem.value.match(alphaExp)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
	function isAlphanumeric(elem, helperMsg) {
		var alphaExp = /^[0-9a-zA-Z]+$/;
		if (elem.value.match(alphaExp)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
	function emailValidator(elem, helperMsg) {
		var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
		if (elem.value.match(emailExp)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}

	}
</script>



</head>
<body >




	<div class="container" style="color: #2E4053">
		<div class="jumbotron" style="background-color: #EAECEE">

			<h3 align="center">Create your account</h3>

			<form class="form-horizontal" method="post" action="newUser"
				onsubmit="return formRegister()" role="form" name="form">
				<div style="color: #424949" class="form-group">
					<label for="email">Username:</label> <input class="form-control"
						placeholder="Enter your User name" type="text" id="username"
						name="username">
				</div>



				<div style="color: #424949" class="form-group">
					<label for="email">Email id:</label> <input type="text"
						name="emailid" class="form-control" id="email"
						placeholder="Enter your email id">
				</div>

				<div style="color: #424949" class="form-group">
					<label for="psw">Password:</label> <input type="password"
						name="password" class="form-control" id="password"
						placeholder="Enter your password"  />
				</div>

				<div style="color: #424949" class="form-group">
					<label for="cmpsw">Confirm Password:</label> <input type="password"
						class="form-control" id="confirmpassword" placeholder="confirm password">
				</div>

				<div style="color: #424949" class="form-group">
					<label for="Mobile">Mobile Number:</label> <input type="text"
						name="mobilenumber" class="form-control" id="mobilenumber"
						placeholder="Enter your Mobile number" maxlength="10">
				</div>

				<div style="color: #424949" class="form-group">
					<label for="Address">Address:</label>
					<textarea rows="4" cols="50" name="address" class="form-control" id="address" placeholder="Enter your address"></textarea>
				</div>


				<button style="background-color: #27A4F7; color: white"
					type="submit" value="submit" class="btn btn-default">Register</button>
			</form>
			<br> <a href="loginpage">I Already have an account </a>
		</div>
	</div>
</body>
</html>


