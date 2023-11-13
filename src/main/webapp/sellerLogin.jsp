<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>XperienceAuto</title>
<meta charset="utf-8">
<link rel="icon" type="image/peg" href="images/logo.jpeg">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<style>
body {
	font-family: 'Poppins', sans-serif;
	background-image: url("images/seller.jpg");
	background-repeat: no-repeat;
	background-size: 100% 1600px; /* Set a fixed height of 400 pixels */
	background-position: center center;
	margin: 0;
	padding: 0;
}

.navbar {
	background-color: #2B2E4A;
	border-color: #2B2E4A;
}

.navbar-nav {
	padding-top: 13.5px;
	padding-bottom: 13.5px;
	font-size: 18px;
}

.container {
	margin-top: 0;
	background-color: aliceblue;
	width: 100%;
	padding: 0;
}

.container-fluid1 {
	background-color: #2B2E4A;
	color: aliceblue;
}

nav .navbar-nav li a {
	color: rgb(239, 118, 6) !important;
}

.navbar-inverse .navbar-brand {
	color: white;
}

.navbar-inverse .navbar-nav>li>a {
	color: white;
}

/* Navbar Styles for Mobile View */
@media ( max-width : 768px) {
	.navbar {
		background-color: #2B2E4A;
		border-color: #2B2E4A;
		padding: 5px 0;
	}
	.navbar-nav {
		font-size: 14px;
	}
	.navbar-brand .logo-mobile {
		display: none;
	}
	.navbar-collapse {
		max-height: calc(100vh - 55px);
		overflow-y: auto;
	}
	.navbar-brand {
		display: flex;
		align-items: center;
		text-align: center;
		padding: 10px;
	}
	.navbar-toggle {
		float: left;
		margin-left: 15px;
		margin-right: 0;
	}
	.navbar-nav {
		padding-top: 0;
		padding-bottom: 0;
	}
	.navbar-nav li a {
		padding: 10px 20px;
		color: #fff;
	}
	.hide-in-mobile {
		display: none;
	}
}

.login-container {
	margin-top: 120px;
	text-align: center;
	padding: 50px;
}

.login-container h2 {
	font-size: 24px;
	color: #2B2E4A;
}

.login-form {
	max-width: 400px;
	margin: 0 auto;
	background: rgba(255, 255, 255, 0.7);
	padding: 40px; /* Reduced padding for better balance */
	border-radius: 2px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.form-group {
	margin-bottom: 0px;
}

.form-group {
	margin-bottom: 20px; /* Add spacing between form elements */
}

.form-group label {
	display: flex;
	font-weight: 600;
}

.form-group input {
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	font-size: 16px;
}

.login-button {
	background: #2B2E4A;
	color: #fff;
	border: none;
	border-radius: 5px;
	padding: 10px 20px;
	font-size: 18px;
	cursor: pointer;
}

.login-button:hover {
	background: rgb(239, 118, 6);
}

/* Add Font Awesome icons */
.form-group .fa {
	margin-right: 10px;
}

.blink {
	animation: blink-animation 1s infinite alternate;
}

/* Keyframes animation for blinking */
@
keyframes blink-animation { 0% {
	opacity: 1;
}

100
%
{
opacity
:
0;
}
}

/* Style for the <h5> element inside the .blink class */
.blink h5 {
	text-align: center;
	color: red;
}
</style>
</head>

<body>

	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container1-fluid">
			<ul class="nav navbar-nav">
				<li><span class="logo-mobile hide-in-mobile"><img
						src="images/logo.jpeg" height="55px" width="65px"></span></li>
				<li><a href="index">XperienceAuto</a></li>
			</ul>
			<button type="button" class="navbar-toggle right"
				data-toggle="collapse" data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="index"><i class="fas fa-home"></i> HOME</a></li>
					<li><a href="about"><i class="far fa-address-card"></i>&nbspABOUT</a></li>
					<li><a href="services"><i class="fa fa fa-cogs"></i>&nbspSERVICES</a></li>
					<li class="user-dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown"> <span
							class="glyphicon glyphicon-log-in"></span>&nbspLOGIN
					</a>
						<ul class="dropdown-menu">
							<li><a href="customerLogin">Customer</a></li>
							<li><a href="sellerLogin">Seller</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="login-container">
		<div class="login-form">
			<form method="post" action="checksellerlogin">
				<h1>Seller Login</h1>
				<br> <span class="blink">
					<h5 align="center" style="color: red">${message}</h5>
				</span><br>
				<div class="form-group">
					<label for="email"><i class="fa fa-user"></i> Email</label> <input
						type="email" id="email" name="email"
						placeholder="Enter your username" required>
				</div>
				<div class="form-group">
					<label for="password"><i class="fa fa-lock"></i> Password</label> <input
						type="password" id="password" name="password"
						placeholder="Enter your password" required>
				</div>
				<button class="login-button" type="submit">Login</button>
				<br>
				<br> <label for="username"> For First Time <a
					href="sellerRegistration"><u>Register Here</u></a></label><br>
				<br>
			</form>
		</div>
	</div>
</body>

</html>
