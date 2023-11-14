<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%
  String empuname = (String) session.getAttribute("cname");
  if(empuname == null) {
    response.sendRedirect("customerLogin");
  }
%>
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

/* Add this CSS to your existing styles */
.partner-logos {
	background-color: aliceblue;
	padding: 20px 0;
}

.partner-logo {
	background-color: #ffffff;
	padding: 20px;
	text-align: center;
	border: 2px solid #000000;
	/* Add a border for separation */
}

.partner-logo {
	text-align: center;
	/* Center-align the images */
	margin-bottom: 0px;
	/* Add some spacing between logos */
}

.partner-logo img {
	width: 100%;
	/* Set a fixed width for all images (adjust as needed) */
	max-height: 100px;
	/* Set a maximum height if necessary */
}

/* Style for the About section */
.container-fluid.py-5 {
	background-color: aliceblue;
	/* Background color */
	padding: 5% 0;
	/* Adjust padding as needed */
}

.container.pt-5.pb-3 {
	text-align: center;
}

.display-1.text-primary {
	font-size: 3rem;
	/* Adjust the font size */
}

.display-4.text-uppercase.text-center.mb-5 {
	color: #333;
	/* Text color */
}

.row.justify-content-center {
	margin-top: 30px;
	/* Adjust the margin as needed */
}

.col-lg-10.text-center {
	margin-bottom: 10px;
	/* Adjust the margin as needed */
}

.w-75.mb-4 {
	max-width: 100%;
	/* Adjust the maximum width as needed */
}

/* Styling for the service items */
.col-lg-4.mb-2 {
	padding: 0 5px;
	/* Adjust the padding as needed */
}

.bg-light.p-4.mb-4 {
	background-color: #fff;
	/* Background color */
	border: 1px solid #ddd;
	/* Border color */
	border-radius: 5px;
	/* Border radius */
	height: 100%;
	/* Height of each service item */
	transition: transform 0.3s ease;
	/* Transition effect */
}

.bg-secondary.p-4.mb-4 {
	background-color: #333;
	/* Background color */
	border: 1px solid #222;
	/* Border color */
	border-radius: 5px;
	/* Border radius */
	height: 100%;
	/* Height of each service item */
	transition: transform 0.3s ease;
	/* Transition effect */
}

/* Icon color for service items */
.d-flex.align-items-center.justify-content-center.flex-shrink-0.bg-primary
	{
	background-color: #FF5733;
	/* Adjust the icon background color */
	color: #fff;
	/* Icon color */
	border-radius: 50%;
	/* Make the icon container circular */
	width: 60px;
	/* Adjust the width as needed */
	height: 60px;
	/* Adjust the height as needed */
}

/* Hover effect for service items */
.bg-light.p-4.mb-4:hover, .bg-secondary.p-4.mb-4:hover {
	transform: scale(1.05);
	/* Scale up on hover */
}

/* Contact section */
.contact-section {
	background-color: aliceblue;
	padding: 1.5% 2%;
	width: 100%;
	font-size: medium;
}

.contact-title {
	text-align: center;
	color: #FF5733;
	font-size: 2rem;
	margin-bottom: 30px;
}

.contact-form {
	background-color: #fffbfb;
	padding: 30px;
	border: 1px solid #fffcfc;
	border-radius: 5px;
}

.contact-info {
	background-color: #333;
	padding: 30px;
	border: 1px solid #ffffff;
	border-radius: 5px;
	color: #fff;
}

.contact-info h3 {
	color: #FF5733;
}

.btn-custom {
	background-color: #FF5733;
	/* Change this to your desired button color */
	color: white;
	/* Text color for the button */
}

/* Hover effect (optional) */
.btn-custom:hover {
	background-color: #FF5733;
	/* Change this to the hover color you prefer */
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

	<%@ include file="customerNavbar.jsp"%>
	<header class="header">
		<img class="header-image" src="images/homepg.webp" alt="Architecture">
		<div class="header-overlay"></div>
		<div class="header-content">
			<h1>
				Welcome "<b style="color: #FF5733; font-size: larger;">${cname}</b>"
			</h1>
			<h3>
				Rev up your <b style="color: #FF5733;">dreams with</b> the ultimate
				<b style="color: #FF5733;">AutoMobile Experience</b> .
			</h3>
		</div>
	</header>

	<!-- Add this section to display partner logos -->
	<section class="partner-logos">
		<div class="container">
			<div class="row">
				<div class="col-xs-6 col-sm-4 col-md-2">
					<div class="partner-logo">
						<img src="images/homelog1.jpeg" alt="Partner 1"
							class="img-responsive">
					</div>
				</div>
				<div class="col-xs-6 col-sm-4 col-md-2">
					<div class="partner-logo">
						<img src="images/homelog2.jpeg" alt="Partner 2"
							class="img-responsive">
					</div>
				</div>
				<div class="col-xs-6 col-sm-4 col-md-2">
					<div class="partner-logo">
						<img src="images/homelog3.png" alt="Partner 1"
							class="img-responsive">
					</div>
				</div>
				<div class="col-xs-6 col-sm-4 col-md-2">
					<div class="partner-logo">
						<img src="images/homelog4.jpeg" alt="Partner 2"
							class="img-responsive">
					</div>
				</div>
				<div class="col-xs-6 col-sm-4 col-md-2">
					<div class="partner-logo">
						<img src="images/homelog5.webp" alt="Partner 1"
							class="img-responsive">
					</div>
				</div>
				<div class="col-xs-6 col-sm-4 col-md-2">
					<div class="partner-logo">
						<img src="images/homelog6.png" alt="Partner 2"
							class="img-responsive">

					</div>
				</div>
				<!-- Add more partner logos here -->
			</div>
		</div>
	</section>
	<div class="container-fluid py-5">
		<h2 style="text-align: center; color: #FF5733;">
			<b>OUR SERVICES</b>
		</h2>
		<br>
		<br>
		<div class="container pt-5 pb-3">
			<div class="row mt-3">
				<div class="col-lg-4 mb-2">
					<div class="d-flex align-items-center bg-light p-4 mb-4"
						style="height: 150px; background-color: #cdd4f0;">
						<div class="d-flex align-items-center justify-content-center"
							style="width: 100px; height: 100px; background-color: #FF5733; margin-top: 25px;">
							<i class="fa fa-3x fa-headset text-white"
								style="margin-top: 30px;"></i>
						</div>
						<div style="margin-top: -85px; margin-left: 30px;">
							<h4 class="text-uppercase m-0"
								style="color: #2B2E4A; font-size: 25px;">
								<b>24/7 AutoMobile<br> Service Support
								</b>
							</h4>
						</div>
					</div>
				</div>
				<div class="col-lg-4 mb-2">
					<div class="d-flex align-items-center bg-secondary p-4 mb-4"
						style="height: 150px;; background-color: #2B2E4A;">
						<div class="d-flex align-items-center justify-content-center"
							style="width: 100px; height: 100px; background-color: #FF5733; margin-top: 25px;">
							<i class="fa fa-3x fa-car text-white" style="margin-top: 30px;"></i>
						</div>
						<div style="margin-top: -85px; color: #ddd; margin-left: 35px;">
							<h4 class="text-light text-uppercase m-0"
								style="color: #ffffff; font-size: 25px;">
								<b>All types of Spare <br>Parts Available
								</b>
							</h4>
						</div>
					</div>
				</div>
				<div class="col-lg-4 mb-2">
					<div class="d-flex align-items-center bg-light p-4 mb-4"
						style="height: 150px; background-color: #cdd4f0;">
						<div class="d-flex align-items-center justify-content-center"
							style="width: 100px; height: 100px; background-color: #FF5733; margin-top: 25px;">
							<i class="fa fa-3x fa-map-marker-alt text-white"
								style="margin-top: 30px;"></i>
						</div>
						<div style="margin-top: -85px; margin-left: 30px;">
							<h4 class="text-uppercase m-0"
								style="color: #2B2E4A; font-size: 25px;">
								<b>Lots Of Branches<br>in India
								</b>
							</h4>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container contact-section">
		<h2 style="text-align: center; color: #FF5733;">
			<b>CONTACT</b><b style="color: #000000;"> US</b>
		</h2>
		<br>
		<br>
		<div class="row">
			<div class="col-md-6">
				<div class="contact-form">
					<form action="#">
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label for="name">Your Name</label> <input type="text"
										class="form-control" id="name" placeholder="Enter your name">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="email">Your Email</label> <input type="email"
										class="form-control" id="email" placeholder="Enter your email">
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="subject">Subject</label> <input type="text"
								class="form-control" id="subject"
								placeholder="Enter the subject">
						</div>
						<div class="form-group">
							<label for="message">Your Message</label>
							<textarea class="form-control" id="message" rows="4"
								placeholder="Enter your message"></textarea>
						</div>
						<button type="submit" class="btn btn-custom">Send Message</button>
					</form>
				</div>
			</div>
			<div class="col-md-6">
				<div class="contact-info">
					<h3>Contact Information</h3>
					<p>
						<i class="fas fa-map-marker-alt" style="color: #FF5733;"></i>
						Vaddeswaram, Vijayawada, AP
					</p>
					<p>
						<i class="fas fa-envelope" style="color: #FF5733;"></i>
						XperienceAuto@gmail.com
					</p>
					<p>
						<i class="fas fa-phone" style="color: #FF5733;"></i> 8639555561,
						7207294455
					</p>
				</div>
			</div>
		</div>
	</div>
	<div class="footer">
		<p>&copy; 2023 XperienceAuto. All Rights Reserved.</p>
	</div>

</body>

</html>