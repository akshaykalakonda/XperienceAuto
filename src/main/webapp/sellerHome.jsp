<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>XperienceAuto</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/peg" href="images/logo.jpeg">
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
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<style>
.body {
	margin: 0;
	padding: 0;
	overflow-x: hidden;
	font-family: 'Poppins', sans-serif;
	background-color: aliceblue;
}

.navbar {
	font-family: 'Poppins', sans-serif;
	background-color: #2B2E4A;
	/* Change this to your desired color */
	border-color: #2B2E4A;
	/* Change this to match the background color or adjust as needed */
}

.navbar-nav {
	padding-top: 13.5px;
	padding-bottom: 13.5px;
	font-size: 18px;
}

.container {
	font-family: 'Poppins', sans-serif;
	margin-top: 0px;
	background-color: aliceblue;
	width: 100%;
}

nav .navbar-nav li a {
	color: rgb(239, 118, 6) !important;
}

.text-primary {
	color: #FF5733;
	/* Change this to your desired primary color */
}

.header {
	height: 70vh;
	/* Set the height to half of the viewport height */
	width: 100%;
	/* Set the width to 100% */
	position: relative;
}

.header-image {
	width: 100%;
	height: 100%;
	object-fit: cover;
	filter: blur(2px);
	/* Apply a slight blur effect */
}

.header-overlay {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.7));
	/* Overlay gradient effect */
}

.header-content {
	position: absolute;
	top: 60%;
	left: 50%;
	transform: translate(-50%, -50%);
	text-align: center;
	color: white;
	z-index: 1;
	/* Ensure content is above overlay */
}

.header-content h1 {
	font-size: 3rem;
	margin-bottom: 10px;
}

.header-content p {
	font-size: 1.5rem;
}

@media ( max-width : 768px) {
	/* Adjust font sizes or other styles for smaller screens */
	body {
		font-size: 14px;
	}
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

/* Responsive styles for smaller screens */
@media ( max-width : 768px) {
	/* Adjust font sizes or other styles for smaller screens */
	body {
		font-size: 14px;
	}
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

@media ( max-width : 768px) {
	.user-dropdown {
		position: relative;
		display: inline-block;
		margin-left: 0px;
	}
	.user-dropdown .dropdown-menu {
		position: absolute;
		top: 100%;
		left: 0;
	}
}
/* CSS for Our Services Section */
.our_service_section {
	background-color: #f8f8f8;
	padding: 50px 0;
}

.section_title {
	text-align: center;
	font-size: 32px;
	margin-bottom: 30px;
}

.section_details {
	text-align: center;
	color: #555;
	font-size: 18px;
	margin-bottom: 50px;
}

.feature-carousel-container {
	overflow: hidden;
}

.feature-carousel {
	display: flex;
	justify-content: space-between;
	animation: scroll 10s infinite linear;
}

.feature-card {
	flex: 0 0 300px;
	background-color: #fff;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	text-align: center;
	padding: 20px;
	margin: 0 10px;
}

.feature-card img {
	width: 100%;
	max-height: 200px;
	object-fit: cover;
	margin-bottom: 15px;
}

@
keyframes scroll { 0% {
	transform: translateX(0%);
}

100
%
{
transform
:
translateX(
-100%
);
}
}

/* Existing styles */
/* Existing styles */

/* Adjustments for smaller screens */
@media ( max-width : 768px) {
	.feature-carousel {
		animation: scroll 6s infinite linear;
		/* Faster animation for smaller screens */
	}
	.feature-card {
		flex: 0 0 300px;
		background-color: #fff;
		box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
		text-align: center;
		padding: 20px;
		margin: 0 10px;
	}
}

@media ( max-width : 480px) {
	.feature-carousel {
		animation-duration: 4s;
		/* Further increase animation speed for smaller screens */
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
	<header class="header">
		<img class="header-image" src="images/homepg.webp" alt="Architecture">
		<div class="header-overlay"></div>
		<div class="header-content">
			<h1>
				Welcome "<b style="color: #FF5733; font-size: larger;">${sname}</b>"
			</h1>
			<h3>
				Rev up your <b style="color: #FF5733;">dreams with</b> the ultimate
				<b style="color: #FF5733;">AutoMobile Experience</b> .
			</h3>
		</div>
	</header>
	<section class="our_service_section">
		<h3 class="section_title">Services Providing</h3>
		<p class="section_details">We provide different services which are
			mentioned below</p>
		<!-- Feature Cards Container -->
		<div class="feature-carousel-container">
			<div class="feature-carousel">
				<!-- Feature Card 1 -->
				<div class="feature-card">
					<img src="images/request.png" alt="Service 1">
					<h4 class="feature-title">Online Service Requests</h4>
					<br>
					<br>
					<p class="feature-description">A customer can raise a service
						request at any time 24/7.</p>
				</div>
				<!-- Feature Card 2 -->
				<div class="feature-card">
					<img src="images/down.png" alt="Service 2">
					<h4 class="feature-title">Download Options</h4>
					<p class="feature-description">Allow users to download Payment
						id after the payment for purchased items.</p>
				</div>
				<!-- Feature Card 3 -->
				<div class="feature-card">
					<img src="images/secure.png" alt="Service 3">
					<h4 class="feature-title">Secure Transactions</h4>
					<p class="feature-description">If applicable, secure payment
						gateways for purchasing or renting Automobiles.</p>
				</div>
				<!-- Add more feature cards as needed -->
			</div>
		</div>
	</section>

	<div class="footer">
		<p>&copy; 2023 XperienceAuto. All Rights Reserved.</p>
	</div>

</body>
<script>
    const featureCarousel = document.querySelector('.feature-carousel');
    
    const featureCardsData = [
      {
        title: 'Notifications',
        description: 'Send in-app notifications about service requests, Overdue Notices',
        imageUrl: '/images/noti.png'
      },
      {
        title: 'Download Options',
        description: 'Allow users to download Payment id after the payment for purchased items.',
        imageUrl: 'images/down.png'
      },

      {
        title: 'Secure Transactions',
        description: 'If applicable, secure payment gateways for purchasing or renting Automobiles.',
        imageUrl: 'images/secure.png'
      }
    ];
    
    function createFeatureCards() {
      featureCardsData.forEach(data => {
        const featureCard = document.createElement('div');
        featureCard.classList.add('feature-card');
    
        const image = document.createElement('img');
        image.src = data.imageUrl;
        image.alt = data.title;
    
        const title = document.createElement('h4');
        title.textContent = data.title;
    
        const description = document.createElement('p');
        description.textContent = data.description;
    
        featureCard.appendChild(image);
        featureCard.appendChild(title);
        featureCard.appendChild(description);
    
        featureCarousel.appendChild(featureCard);
      });
    }
    
    // Call the function to create feature cards when the window loads
    window.onload = createFeatureCards;
    </script>
</html>