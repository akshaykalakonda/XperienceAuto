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
	margin: 0;
	padding: 0;
	overflow-x: hidden;
	font-family: 'Poppins', sans-serif;
	background-color: aliceblue;
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

/* Center the form on the screen */
.center-container {
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
}

/* Style the login form */
.login-form {
	background-color: #ffffff;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	width: 100%;
	max-width: 400px;
	animation: fadeInUp 1s;
}

/* Add a fade-in animation */
@
keyframes fadeInUp { 0% {
	transform: translateY(20px);
	opacity: 0;
}

100
%
{
transform
:
translateY(
0
);
opacity
:
1;
}
}

/* Adjust input field size */
.form-group {
	margin-bottom: 15px;
}

.form-group label {
	font-weight: bold;
}

.form-control {
	width: 100%;
	padding: 8px;
	border: 1px solid #ccc;
	border-radius: 3px;
}

.login-button {
	background-color: #2B2E4A;
	color: #fff;
	border: none;
	border-radius: 3px;
	padding: 10px 20px;
	cursor: pointer;
	transition: background-color 0.3s;
}

.login-button:hover {
	background-color: #1C1F38;
}
</style>
</head>

<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container1-fluid">
			<ul class="nav navbar-nav">
				<li><span class="logo-mobile hide-in-mobile"><img
						src="images/logo.jpeg" height="55px" width="65px"></span></li>
				<li><a href="SellerIndex.html">XperienceAuto</a></li>
			</ul>
			<button type="button" class="navbar-toggle right"
				data-toggle="collapse" data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="sellerHome"><i class="fas fa-home"></i> HOME</a></li>
					<li><a href="sellerAddProduct"><i
							class="fas fa-shopping-cart"></i>&nbspADD PRODUCT</a></li>
					<li><a href="sellerProbyName"><i class="fas fa-cogs"></i>&nbspVIEW
							PRODUCT</a></li>
					<li class="user-dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown"> <i class="fas fa-user-circle"></i>&nbsp&nbsp${sname}
					</a>
						<ul class="dropdown-menu">

							<li><a href="sellogout">Logout</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container">
		<br>
		<div class="center-container">
			<div class="login-form">
				<h2 align="center">Add Product</h2>
				<br> <span class="blink">
					<h5 align="center" style="color: red">${message}</h5>
				</span><br>
				<form action="insertProduct" method="POST"
					enctype="multipart/form-data">
					<div class="form-group">
						<label>Product Name:</label> <input type="text" id="product-name"
							name="product_name" class="form-control" required>
					</div>
					<div class="form-group">
						<label>Manufacturer:</label> <input type="text" id="manufacturer"
							name="product_description" class="form-control" required>
					</div>
					<div class="form-group">
						<label>Seller Name:</label> <input type="text" id="seller-name"
							name="seller_name" value="${sname}" class="form-control" readonly>
					</div>
					<div class="form-group">
						<label>Price:</label> <input type="number" id="price"
							name="product_price" step="0.01" class="form-control" required>
					</div>
					<div class="form-group">
						<label>Upload Image:</label> <input type="file" id="product-image"
							name="product_image" class="form-control-file" accept="image/*"
							required>
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-primary login-button">Add
							Service</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>

</html>