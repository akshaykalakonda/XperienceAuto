<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
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
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">


<style>
body {
	background-color: aliceblue;
	margin: 0;
	padding: 0;
	font-family: 'Poppins', sans-serif;
}

.navbar {
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

nav .navbar-nav li a {
	color: rgb(239, 118, 6) !important;
}

.container-fluid1 {
	background-color: #2B2E4A;
	color: aliceblue;
}

.background {
	width: 430px;
	height: 520px;
	position: absolute;
	transform: translate(-50%, -50%);
	left: 50%;
	top: 50%;
}

.background .shape {
	height: 200px;
	width: 200px;
	position: absolute;
	border-radius: 50%;
}

.shape:first-child {
	background: linear-gradient(#1845ad, #23a2f6);
	left: -80px;
	top: -80px;
}

.shape:last-child {
	background: linear-gradient(to right, #ff512f, #f09819);
	right: -90px;
	bottom: -220px;
}

form {
	height: 640px;
	width: 400px;
	background-color: rgba(0, 0, 0, 0.13);
	position: absolute;
	transform: translate(-50%, -50%);
	top: 55%;
	left: 50%;
	border-radius: 10px;
	backdrop-filter: blur(100000000000000000000000000000000000000000000000000000000000000000px
		);
	border: 2px solid rgba(2, 2, 2, 0.1);
	box-shadow: 0 0 40px rgba(55, 46, 117, 0.89);
	padding: 5px 35px;
}

form * {
	font-family: 'Poppins', sans-serif;
	color: #050404;
	letter-spacing: 0.5px;
	outline: none;
	border: none;
}

form h3 {
	font-size: 32px;
	font-weight: 500;
	line-height: 42px;
	text-align: center;
}

label {
	display: block;
	margin-top: 30px;
	font-size: 16px;
	font-weight: 500;
}

input {
	display: block;
	height: 50px;
	width: 100%;
	background-color: rgba(2, 2, 2, 0.20);
	border-radius: 3px;
	padding: 0 10px;
	margin-top: 8px;
	font-size: 14px;
	font-weight: 300;
}

::placeholder {
	color: #e5e5e5;
}

button {
	margin-top: 50px;
	width: 100%;
	padding: 15px 0;
	font-size: 18px;
	font-weight: 600;
	border-radius: 5px;
	cursor: pointer;
	color: #000000;
}

/* Button with different gradient */
.button-blue {
	background-image: linear-gradient(to bottom, #0074D9, #2ECC40);
	color: #000000;
}

/* Button with different gradient */
.button-purple {
	background-image: linear-gradient(to bottom, #9b59b6, #3498db);
	color: #000000;
}

/* Add more classes for buttons with different gradients */
.social {
	margin-top: 28px;
	display: flex;
}

.social div {
	width: 150px;
	border-radius: 3px;
	padding: 5px 10px 10px 5px;
	background-color: rgba(25, 25, 25, 0.78);
	color: #eaf0fb;
	text-align: center;
}

.social div:hover {
	background-color: rgba(243, 2, 2, 0.1);
}

.social .fb {
	margin-left: 25px;
}

.social i {
	margin-right: 4px;
}

.input-with-icon {
	position: relative;
}

.input-with-icon i {
	position: absolute;
	top: 50%;
	transform: translateY(-50%);
	left: 10px;
	color: #ccc;
}

button.button-blue {
	background-image: linear-gradient(to bottom, #000000, #000000);
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


0
;


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

	<div class="background">
		<div class="shape"></div>
		<div class="shape"></div>
	</div>

	<form style="margin-top: 50px;" method="post" action="checkcuslogin">
		<span class="blink">
			<h5 align="center" style="color: red">${message}</h5>
		</span>
		<h3>Login Here</h3>
		<label for="username"><i class="fa fa-user-alt"></i> Email</label>
		<div class="input-with-icon">
			<input type="email" name="email" placeholder="Email " id="username"
				required>

		</div>
		<label for="password"><i class="fas fa-lock"></i> Password</label>
		<div class="input-with-icon">
			<input type="password" name="pwd" placeholder="Password"
				id="password" required>

		</div>
		<label for="captcha">Enter CAPTCHA:</label> <img
			src="captchaImage.jsp" alt="CAPTCHA" id="captchaImage" /> <i
			id="refreshCaptcha" class="fas fa-sync-alt captcha-icon"></i> <input
			type="text" id="captcha" name="captcha" placeholder="Enter Captcha"
			class="captcha-input" required />
		<button class="button-blue">Log In</button>
		<label for="username"> For First Time <a
			href="customerRegistrationPage"><u>Register Here</u></a></label><br>
	</form>

	<script>
		document.getElementById('refreshCaptcha').addEventListener('click',
				function() {
					// Generate a random query parameter to force a new CAPTCHA image
					var randomQueryParam = 'r=' + Math.random();

					// Get the CAPTCHA image element
					var captchaImage = document.getElementById('captchaImage');

					// Update the image source with the random query parameter to reload it
					captchaImage.src = 'captchaImage.jsp?' + randomQueryParam;
				});
	</script>
	<script>
		const passwordInput = document.getElementById('password');
		const togglePasswordButton = document.getElementById('togglePassword');

		togglePasswordButton
				.addEventListener(
						'click',
						function() {
							const type = passwordInput.getAttribute('type') === 'password' ? 'text'
									: 'password';
							passwordInput.setAttribute('type', type);
							togglePasswordButton.classList
									.toggle('fa-eye-slash');
							togglePasswordButton.classList.toggle('fa-eye');
						});
	</script>
</body>

</html>