<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>XperienceAuto</title>
<meta charset="utf-8">
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
<link rel="icon" type="image/peg" href="images/logo.jpeg">
<style>
body {
	font-family: 'Poppins', sans-serif;
	background-image: url("images/seller.jpg");
	background-repeat: no-repeat;
	background-size: 100% 1600px;
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

.registration-container {
	margin-top: 120px;
	text-align: center;
	padding: 50px;
}

.registration-container h1 {
	font-size: 24px;
	color: #2B2E4A;
}

.registration-form {
	max-width: 400px;
	margin: 0 auto;
	background: rgba(255, 255, 255, 0.7);
	padding: 40px;
	border-radius: 2px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.form-group {
	margin-bottom: 20px;
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

.form-group select {
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	font-size: 16px;
}

.registration-button {
	background: #2B2E4A;
	color: #fff;
	border: none;
	border-radius: 5px;
	padding: 10px 20px;
	font-size: 18px;
	cursor: pointer;
}

.registration-button:hover {
	background: rgb(239, 118, 6);
}

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
					<li><a href="services"><i class="fa fa-cogs"></i>&nbspSERVICES</a></li>
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

	<div class="registration-container">
		<div class="registration-form">
			<form method="post" action="addSeller">
				<h1>Seller Registration</h1>
				<br> <span class="blink">
					<h5 align="center" style="color: red">${message}</h5>
				</span><br>
				<div class="form-group">
					<label for="fullname"><i class="fa fa-user"></i> Full Name</label>
					<input type="text" id="fullname" name="fullname"
						placeholder="Enter your full name" required>
				</div>
				<div class="form-group">
					<label for="email"><i class="fa fa-envelope"></i> Email</label> <input
						type="email" id="email" name="email" pattern=".+@gmail\.com"
						placeholder="Enter your email"
						title="email format must be xxx@gmail.com" required>
				</div>
				<div class="form-group">
					<label for="gender"><i class="fa fa-venus-mars"></i> Gender</label>
					<select id="gender" name="gender" required>
						<option value="male">Male</option>
						<option value="female">Female</option>
						<option value="other">Other</option>
					</select>
				</div>
				<div class="form-group">
					<label for="password"><i class="fa fa-lock"></i> Password</label> <input
						type="password" id="password" name="password"
						pattern="((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*]).{8,30})"
						placeholder="Enter your password"
						title="Password must contain atleast one number [0-9],uppercase [A-Z],special character [!@#$%^&*], length > 8!! try again!!"
						required>
				</div>
				<div class="form-group">
					<label for="contactnumber"><i class="fa fa-phone"></i>
						Contact Number</label> <input type="text" id="contactnumber"
						name="contactnumber" placeholder="Enter your contact number"
						required>
				</div>
				<button class="registration-button" type="submit">Register</button>
				<br>
				<br>
			</form>
		</div>
	</div>

</body>

</html>
