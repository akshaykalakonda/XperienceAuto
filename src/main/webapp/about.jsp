<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<title>XperienceAuto</title>
<meta charset="utf-8">
<link rel="icon" type="image/peg" href="images/logo.jpeg">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<style>
body {
	font-family: 'Poppins', sans-serif;
	margin: 0;
	padding: 0;
	background-color: aliceblue;
}

.navbar {
	background-color: #2B2E4A;
	border-color: #2B2E4A;
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

.header-container {
	position: relative;
	background: url('/images/bg-banner.jpg') center/cover no-repeat;
	background-repeat: no-repeat;
	background-size: cover;
	color: white;
	text-align: center;
	padding: 20px;
	height: 250px;
	margin-top: 70px;
	background-position: center top;
	font-size: larger;
}

.header-container::before {
	content: "";
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
}

.container {
	max-width: 10000px;
	margin: 0 auto;
	padding: 20px;
}

.card {
	border: none;
	border-radius: 15px;
	margin-bottom: 20px;
	background-color: white;
	transition: transform 0.3s, box-shadow 0.3s;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
	overflow: hidden;
	display: flex;
	flex-direction: column;
	justify-content: space-between;
}

.card:hover {
	box-shadow: 0 8px 10px rgba(0, 0, 0, 0.2);
}

.card-img-top {
	max-width: 100%;
	height: 375px;
	/* Set the desired height for your card images */
	object-fit: cover;
	/* This ensures the images maintain their aspect ratio */
	transition: transform 0.3s;
}

.card-body {
	padding: 20px;
}

.card-title {
	font-size: 1.25rem;
	margin-bottom: 10px;
}

.card-text {
	font-size: 1rem;
}

.btn-primary {
	margin-top: auto;
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

	/* Hide XperienceAuto in mobile view */
	.navbar-brand .logo-mobile {
		display: none;
	}

	/* Adjust the mobile navigation width */
	.navbar-collapse {
		max-height: calc(100vh - 55px);
		/* Subtract the height of the navbar */
		overflow-y: auto;
	}

	/* Center align mobile logo and icons */
	.navbar-brand {
		display: flex;
		align-items: center;
		text-align: center;
		padding: 10px;
	}

	/* Move the toggle button to the left */
	.navbar-toggle {
		float: left;
		margin-left: 15px;
		margin-right: 0;
	}

	/* Adjust padding for navbar links */
	.navbar-nav {
		padding-top: 0;
		padding-bottom: 0;
	}

	/* Style the mobile navigation links */
	.navbar-nav li a {
		padding: 10px 20px;
		/* Adjust the padding as needed */
		color: #fff;
		/* Change link color */
	}

	/* Hide the image in mobile view */
	.hide-in-mobile {
		display: none;
	}
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

	<div class="header-container">
		<h1 style="color: rgb(0, 0, 0); font-size: 90px;">
			<b>About Us</b>
		</h1>
	</div>

	<div class="container">
		<div class="text-center">
			<h1>
				<b>Our Mission</b>
			</h1>
			<h4>The term "Automobile Management System" generally refers to
				a software application</h4>
			<h4>designed to efficiently manage various aspects of
				automobile-related operations within a dealership or service center</h4>
		</div>

		<div class="text-center">
			<h2>
				<b>Our Team</b>
			</h2>
			<br>
		</div>

		<!-- Adding Card Section -->
		<div class="row">
			<div class="col-md-3">
				<div class="card">
					<img src="images/surya.jpeg" alt="Card 1 Image"
						class="card-img-top">
					<div class="card-body">
						<h3>Mentor</h3>
						<p>Name : J. Surya Kiran</p>
						<p>ID : 4654</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card">
					<img src="images/pradeep.jpeg" alt="Card 2 Image"
						class="card-img-top">
					<div class="card-body">
						<h3>Team Leader</h3>
						<p>Name : T. Pradeep</p>
						<p>ID : 2100030875</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card">
					<img src="images/akshay.jpeg" alt="Card 3 Image"
						class="card-img-top">
					<div class="card-body">
						<h3>Team Member</h3>
						<p>Name : K. Akshay</p>
						<p>ID : 2100030871</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card">
					<img src="images/harsha.jpeg" alt="Card 4 Image"
						class="card-img-top">
					<div class="card-body">
						<h3>Team Member</h3>
						<p>Name : P. Harsha Vardhan</p>
						<p>ID : 2100030392</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>