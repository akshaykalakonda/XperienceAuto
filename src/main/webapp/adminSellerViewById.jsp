<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>XperienceAuto</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/peg" href="images/logo.jpeg">
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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>
.container2 {
	max-width: 800px;
	margin: 0 auto;
	margin-top: 100px;
	padding: 20px;
	background-color: #fff;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

.profile-info {
	text-align: center;
	margin-bottom: 20px;
}

.profile-pic {
	width: 240px;
	height: 240px;
	border-radius: 50%;
	object-fit: cover;
}

.profile-name {
	font-size: 20px;
	margin-top: 10px;
	color: white;
}

.profile-email {
	color: white;
	margin-top: 5px;
}
</style>
</head>

<body>
	<%@ include file="adminNavbar.jsp"%>
	<br>
	<br>
	<br>
	<br>
	<div class="container2"
		style="background-image: url('images/profilebg.jpg'); background-repeat: no-repeat; background-size: 100% 100%; background-size: cover;">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<!-- Centered column -->
				<!-- Left Column for Profile Details -->
				<div class="profile-info">
					<h2 style="color: white;">Seller Profile View By ID</h2>
					<br>
					<div class="profile-name">
						<b>Full Name:</b> ${cdata.fullname}
					</div>
					<div class="profile-name">
						<b>Email:</b> ${cdata.email}
					</div>
					<div class="profile-name">
						<b>Gender:</b> ${cdata.gender}
					</div>
					<div class="profile-name">
						<b>Contact No.:</b> ${cdata.contactno}
					</div>
				</div>
			</div>
		</div>
</body>
</html>
