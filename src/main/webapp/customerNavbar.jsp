<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
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
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<style>
body {
	font-family: 'Poppins', sans-serif;
	margin: 0;
	padding: 0;
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

.container-fluid1 {
	background-color: #2B2E4A;
	color: aliceblue;
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
</style>

</head>

<body>

	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container1-fluid">
			<ul class="nav navbar-nav">
				<li><span class="logo-mobile hide-in-mobile"><img
						src="images/logo.jpeg" height="55px" width="65px"></span></li>
				<li><a href="index.html">XperienceAuto</a></li>
			</ul>
			<button type="button" class="navbar-toggle right"
				data-toggle="collapse" data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="customerHome"><i class="fas fa-home"></i>
							HOME</a></li>
					<li><a href="customerSpare"><i
							class="fas fa-shopping-cart"></i>&nbspPRODUCTS</a></li>
					<li><a href="customerServiceReq"><i class="fas fa-cogs"></i>&nbspSERVICES</a></li>

					<li class="user-dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown"> <i class="fas fa-user-circle"></i>&nbsp&nbsp${cname}
					</a>
						<ul class="dropdown-menu">
							<li><a href="customerProfile">Profile</a></li>
							<li><a href="customerRaisedRequest">My Requests</a></li>
							<li><a href="cuslogout">Logout</a></li>

						</ul></li>
				</ul>
			</div>
		</div>
	</nav>


</body>

</html>