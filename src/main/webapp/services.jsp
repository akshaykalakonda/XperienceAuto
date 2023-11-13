<!DOCTYPE html>
<html lang="en">

<head>
<title>XperienceAuto</title>
<meta charset="utf-8">
<link rel="icon" type="image/peg" href="images/logo.jpeg">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css"
	rel="stylesheet" />
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

.container-fluid1 {
	background-color: #2B2E4A;
	color: aliceblue;
}

nav .navbar-nav li a {
	color: rgb(239, 118, 6) !important;
}

.header-container {
	background: url('images/bg-banner.jpg') center/cover no-repeat;
	background-repeat: no-repeat;
	background-size: cover;
	color: white;
	text-align: center;
	padding: 20px;
	height: 250px;
	margin-top: 70px;
	background-position: 0px;
}

.header-container::before {
	content: "";
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 43%;
	background-color: rgba(11, 12, 14, 0.5);
	/* Adjust the opacity as needed */
}

.container {
	max-width: 10000px;
	margin: 0 auto;
	padding: 20px;
	background-color: aliceblue;
}

/* Additional CSS for styling the services section with gaps between cards */
.service-item {
	background-color: #fff;
	border: 1px solid #e1e1e1;
	border-radius: 10px;
	padding: 20px;
	box-shadow: 0px 4px 8px rgba(15, 9, 9, 0.1);
	transition: box-shadow 0.3s;
	margin-bottom: 20px;
	/* Add margin to create gaps between cards */
}

.service-item:hover {
	box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
}

.service-item h4 {
	font-weight: bold;
}

.service-item p {
	color: #777;
}

/* Adjust the icon size and color */
.service-item .fa {
	font-size: 3em;
	color: aliceblue;
	;
}

/* Adjust the background color of the service number */
.service-item h1 {
	background-color: #cccee2;
	color: white;
	border-radius: 50%;
	width: 60px;
	height: 60px;
	line-height: 60px;
	text-align: center;
	margin: 0;
}

/* Adjust spacing and layout */
.container-fluid1 {
	padding: 30px 0;
}

.services {
	padding: 60px 0;
	text-align: center;
}

.services h1 {
	margin-bottom: 30px;
	color: #2B2E4A;
}

/* Add media queries for responsiveness */
@media ( max-width : 768px) {
	.service-item {
		margin-bottom: 30px;
	}
}

.service-number {
	position: absolute;
	top: 0;
	right: 0;
	background-color: #1e213b;
	color: white;
	border-radius: 50%;
	width: 40px;
	height: 40px;
	line-height: 40px;
	text-align: center;
	font-size: 1.5em;
}

/* In your CSS file or within a <style> tag in your HTML */
.bg-custom-color {
	background-color: rgb(239, 118, 6);
	/* Replace with your desired background color */
	width: 80px;
	height: 80px;
	display: flex;
	align-items: center;
	justify-content: center;
	margin-left: -4px;
	/* Adjust as needed to align with other content */
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

/* Logo and App Name Styles */
.navbar-brand i {
	margin-right: 5px;
	font-size: 20px;
	color: white;
}

/* Display the logo in desktop mode */
.navbar-brand img.desktop-show {
	height: 40px;
	width: auto;
	margin-right: 5px;
}

.navbar-brand .app-name {
	font-size: 20px;
	color: white;
}

/* Image Styles for Mobile View */
@media ( max-width : 768px) {
	img.img-fluid.mb-6 {
		max-width: 100%;
		height: auto;
	}
}

@media ( max-width : 768px) {
	.mobile-heading {
		font-size: 15px;
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

	<div class="header-container"></div>
	<br>
	<div class="container-fluid py-5">
		<div class="container pt-5 pb-3">
			<h1 class="display-4 text-uppercase text-center mb-5">Our
				Services</h1>
			<br>
			<div class="row">
				<!-- Add your service items here -->
				<div class="col-lg-4 col-md-6 mb-2">
					<div
						class="service-item active d-flex flex-column justify-content-center px-4 mb-4">
						<div
							class="d-flex align-items-center justify-content-between mb-3">
							<!-- Apply the custom class to set the background color -->
							<div
								class="d-flex align-items-center justify-content-center bg-custom-color ml-n4">
								<!-- Update the color of the icon -->
								<i class="fa fa-money-check text-secondary"
									style="color: white;"></i>
							</div>
							<div class="service-number">01</div>
						</div>
						<h4 class="text-uppercase mb-3">Car Spare Parts</h4>

						<p class="m-0">High-quality car spare parts for all makes and
							models, ensuring reliable performance and safety on the road</p>
						<a href="customerLogin" class="btn btn-primary mt-3">Know More</a>
					</div>
				</div>



				<div class="col-lg-4 col-md-6 mb-2">
					<div
						class="service-item active d-flex flex-column justify-content-center px-4 mb-4">
						<div
							class="d-flex align-items-center justify-content-between mb-3">
							<div
								class="d-flex align-items-center justify-content-center bg-custom-color ml-n4"
								style="width: 80px; height: 80px;">
								<i class="fa fa-2x fa-money-check-alt text-secondary"></i>
							</div>
							<div class="service-number">02</div>
						</div>
						<h4 class="text-uppercase mb-3">Car Financing</h4>

						<p class="m-0">Car financing provides the opportunity to
							purchase a vehicle through affordable installment plans.</p>
						<a href="customerLogin" class="btn btn-primary mt-3">Know More</a>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 mb-2">
					<div
						class="service-item d-flex flex-column justify-content-center px-4 mb-4">
						<div
							class="d-flex align-items-center justify-content-between mb-3">
							<div
								class="d-flex align-items-center justify-content-center bg-custom-color ml-n4"
								style="width: 80px; height: 80px;">
								<i class="fa fa-2x fa-car text-secondary"></i>
							</div>
							<div class="service-number">03</div>
						</div>
						<h4 class="text-uppercase mb-3">Car Inspection</h4>
						<p class="m-0">Car inspection is a thorough examination of a
							vehicle's condition, ensuring safety, functionality.</p>
						<a href="customerLogin" class="btn btn-primary mt-3">Know More</a>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 mb-2">
					<div
						class="service-item d-flex flex-column justify-content-center px-4 mb-4">
						<div
							class="d-flex align-items-center justify-content-between mb-3">
							<div
								class="d-flex align-items-center justify-content-center bg-custom-color ml-n4"
								style="width: 80px; height: 80px;">
								<i class="fa fa-2x fa-cogs text-secondary"></i>
							</div>
							<div class="service-number">04</div>
						</div>
						<h4 class="text-uppercase mb-3">Auto Repairing</h4>
						<p class="m-0">Auto repairing: expert services to keep your
							car running smoothly, from diagnostics to maintenance and repairs</p>
						<a href="customerLogin" class="btn btn-primary mt-3">Know More</a>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 mb-2">
					<div
						class="service-item d-flex flex-column justify-content-center px-4 mb-4">
						<div
							class="d-flex align-items-center justify-content-between mb-3">
							<div
								class="d-flex align-items-center justify-content-center bg-custom-color ml-n4"
								style="width: 80px; height: 80px;">
								<i class="fa fa-2x fa-spray-can text-secondary"></i>
							</div>
							<div class="service-number">05</div>
						</div>
						<h4 class="text-uppercase mb-3">Auto Painting</h4>
						<p class="m-0">Auto painting: Revitalize your car's appearance
							with professional paintwork, color matching,finishing services.</p>
						<a href="customerLogin" class="btn btn-primary mt-3">Know More</a>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 mb-2">
					<div
						class="service-item d-flex flex-column justify-content-center px-4 mb-4">
						<div
							class="d-flex align-items-center justify-content-between mb-3">
							<div
								class="d-flex align-items-center justify-content-center bg-custom-color ml-n4"
								style="width: 80px; height: 80px;">
								<i class="fa fa-2x fa-pump-soap text-secondary"></i>
							</div>
							<div class="service-number">06</div>
						</div>
						<h4 class="text-uppercase mb-3">Auto Cleaning</h4>
						<p class="m-0">Auto cleaning: Restore your car's shine and
							freshness with thorough interior and exterior cleaning.</p>
						<a href="customerLogin" class="btn btn-primary mt-3">Know More</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	</div>
	</div>

</body>

</html>