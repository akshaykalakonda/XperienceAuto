<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
/* Global Styles */
body {
	font-family: 'Poppins', sans-serif;
	background-image: url("images/carousel.jpg");
	background-repeat: no-repeat;
	margin: 0;
	padding: 0;
	background-repeat: no-repeat; background-size: 100% 100%; background-size: cover;
}

.navbar {
	font-family: 'Poppins', sans-serif;
	background-color: #2B2E4A;
	border-color: #2B2E4A;
}

.navbar-nav {
	padding-top: 13.5px;
	padding-bottom: 13.5px;
	font-size: 18px;
}

body::before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.4); /* Adjust the opacity (0.5 for semi-transparent black) */
    z-index: -1;
}

.container-fluid1 {
	background-color: #2B2E4A;
	color: aliceblue;
}

nav .navbar-nav li a {
	color: rgb(239, 118, 6) !important;
}

/* Adjust the carousel size */
#myCarousel {
	max-width: 100%;
	margin: 0 auto;
}

.carousel-inner {
	height: 100vh;
}

.carousel-inner .item img {
	object-fit: cover;
	width: 100%;
	height: 100%;
}

.carousel-inner .item::before {
	content: "";
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.438);
}

.carousel-caption {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 60%;
	text-align: center;
}

.str {
	font-family: 'Poppins', sans-serif;
	font-size: 65px;
}

.str1 {
	font-family: 'Poppins', sans-serif;
	font-size: 35px;
}

/* Footer Styles */
.footer {
	background-color: #2B2E4A;
	color: white;
	text-align: center;
	padding: 20px;
}

.text-primary {
	color: #FF5733;
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

/* Carousel Styles for Mobile View */
@media ( max-width : 768px) {
	#myCarousel {
		max-width: 100%;
		margin: 0;
		margin-top: 120px;
	}
	.carousel-inner {
		height: auto;
	}
	.carousel-inner .item img {
		object-fit: cover;
		width: 100%;
		height: auto;
	}
	.carousel-inner .item::before {
		background-color: rgba(0, 0, 0, 0.438);
	}
	.carousel-caption {
		width: 80%;
	}
	.str {
		font-size: 10px;
	}
	.str1 {
		font-size: 15px;
	}
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
	 <div class="container-fluid p-0">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">

                <div class="item active">
                    <img src="images/carousel.jpg" alt="Los Angeles">
                    <div class="carousel-caption">
                        <h4 class="str1"><b>SERVICE A CAR</b></h4>
                        <h1 class="str"><b>Best Car Services In Your Location</b></h1>
                    </div>
                </div>

                <div class="item">
                    <img src="images/carousel-2.jpg" alt="Chicago">
                    <div class="carousel-caption">
                        <h4 class="str1"><b>GET A CAR</b></h4>
                        <h1 class="str"><b>Quality Cars With Unlimited Miles</b></h1>
                    </div>
                </div>

            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>

    <div class="container-fluid py-5">
        <div class="container pt-5 pb-3">
            <h1 class="display-1 text-primary text-center"></h1>
            <h1 class="display-4 text-uppercase text-center mb-5 mobile-heading">Welcome To <span
                    class="text-primary">AUTOMOBILE
                    SERVICES</span></h1>
            <div class="row justify-content-center">
                <div class="col-lg-13 text-center">
                    <img class="img-fluid mb-6" src="images/about.png" alt="">
                </div>
            </div>
        </div>
    </div>


    <div class="container-fluid py-5">
        <div class="container pt-5 pb-3">
            <h1 class="display-1 text-primary text-center"></h1>
            <h1 class="display-4 text-uppercase text-center mb-5 mobile-heading">Welcome To <span
                    class="text-primary">AUTOMOBILE
                    SERVICES</span></h1>
            <div class="row justify-content-center">
                <div class="col-lg-13 text-center">
                    <img class="img-fluid mb-6" src="images/about.png" alt="">
                </div>
            </div>
        </div>
    </div>

    <div class="footer">
        <p>&copy; 2023 XperienceAuto. All Rights Reserved.</p>
    </div>
</body>

</html>