<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">
<%
  String empuname = (String) session.getAttribute("cname");
  if(empuname == null) {
    response.sendRedirect("customerLogin");
  }
%>
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
	font-family: 'Poppins', sans-serif;
	margin: 0;
	padding: 0;
	background-color: aliceblue;
}

.container1 {
	max-width: 800px;
	margin: 0 auto;
	margin-top: 140px;
	padding: 20px;
	background-color: #fff;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

.profile-info {
	text-align: center;
	margin-bottom: 20px;
	margin-top: 100px;
}

.profile-pic {
	width: 150px;
	height: 150px;
	border-radius: 50%;
	object-fit: cover;
}

.profile-name {
	font-size: 24px;
	font-weight: bold;
	margin-top: 10px;
}

.profile-email {
	color: #777;
	margin-top: 5px;
}

.user-dropdown {
	display: inline-block;
	margin-left: 20px;
}

.user-dropdown .dropdown-toggle {
	color: #333;
	cursor: pointer;
}

.change-password-form {
	background-color: #f2f2f2;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
}

.form-group {
	margin-bottom: 15px;
}

label {
	font-weight: bold;
}

input[type="password"] {
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 3px;
}

.btn-primary {
	background-color: #333;
	color: #fff;
	padding: 10px 20px;
	border: none;
	border-radius: 3px;
	cursor: pointer;
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

.form-group {
	margin-bottom: 15px;
}

input[type="text"], input[type="tel"], select {
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 3px;
}
</style>
</head>

<body>
	<%@ include file="customerNavbar.jsp"%>
	<div class="container1">
		<div class="row">
			<!-- Left Column for Profile Details -->
			<div class="col-md-6">
				<div class="profile-info">
					<img class="profile-pic" src="c/${cid}" alt="Profile Picture">
					<div class="profile-name">${cc.fullname}</div>
					<div class="profile-email">${cc.email}</div>
					<div class="profile-email">${cc.gender}</div>
					<div class="profile-email">${cc.contactno}</div>
				</div>
			</div>

			<!-- Right Column for User Details Update Form -->
			<div class="col-md-6">
				<div class="change-password-form">
					<h2>Update User Details</h2>
					<form action="updateCusProfile" method="post">
						<span class="blink">
							<h5 align="center" style="color: red">${message}</h5>
						</span>
						<div class="form-group">
							<label for="name"><i class="fas fa-user"></i> Full Name:</label>
							<input type="text" id="name" name="name" value="${cc.fullname}"
								required>
						</div>
						<div class="form-group">
							<label for="email"><i class="fas fa-envelope"></i> Email:</label>
							<input type="text" id="email" name="email" value="${cc.email}"
								readonly>
						</div>
						<div class="form-group">
							<label for="phone"><i class="fas fa-phone"></i> Phone
								Number:</label> <input type="tel" id="phone" name="phone"
								pattern="[789][0-9]{9}" value="${cc.contactno}" required>
						</div>
						<div class="form-group">
							<label for="phone"><i class="fas fa-lock"></i> Password:</label>
							<input type="password" id="password" name="password"
								pattern="((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*]).{8,30})"
								placeholder="Enter password"
								title="Password must contain atleast one number [0-9],uppercase [A-Z],special character [!@#$%^&*], length > 8!! try again!!"
								value="${cc.password}" required>
						</div>
						<div class="form-group">
							<label for="gender"><i class="fas fa-venus-mars"></i>
								Gender:</label> <select id="gender" name="gender" value="${cc.gender}"
								readonly>

								<option value="Male" selected>${cc.gender}</option>
							</select>
						</div>
						<button class="btn-primary" type="submit">
							<i class="fas fa-check"></i> Update Details
						</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>

</html>
