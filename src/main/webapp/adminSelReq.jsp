<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>XperienceAuto</title>
<meta charset='utf-8'>
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
<meta http-equiv='X-UA-Compatible' content='IE=edge'>

<style>
.custom-table {
	margin-left: 65px;
}

.custom-table th, .custom-table td {
	border: 3px solid #ccc;
	padding: 12px;
	text-align: center;
}

.login-container {
	border: 1px solid #ddd;
	border-radius: 5px;
	background-color: #ebecee;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	margin: 20px auto;
	max-width: 1300px; /* Adjust the maximum width as needed */
	padding: 20px;
}

.custom-table th {
	font-weight: bold; /* Specify font weight as bold */
	background-color: #292929;
	font-size: 17px;
	font-family: 'Arial', sans-serif;
	text-align: center;
	color: white;
}

.custom-table td {
	background-color: white;
	font-size: 17px;
}

.custom-table .delete-button {
	background-color: #ff6666;
	color: white;
	border: none;
	padding: 8px 12px;
	cursor: pointer;
	border-radius: 5px;
}

.custom-table .delete-button:hover {
	background-color: #ff4d4d;
}

.custom-table .accept-button {
	color: white;
	border: none;
	padding: 8px 12px;
	cursor: pointer;
	border-radius: 5px;
}

.custom-table .accept-button:hover {
	background-color: #F5AD46;
}

h1 {
	text-align: center;
	font-size: 36px;
	color: #2B2E4A; /* Set the text color */
	font-weight: bold; /* Make the text bold */
	margin-top: 20px; /* Add some top margin for spacing */
	text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);
	/* Add a subtle text shadow */
	letter-spacing: 2px; /* Adjust letter spacing for style */
}

/* If you want to change the text color on hover */
h1:hover {
	color: #FF5733; /* Change the text color on hover */
}
</style>
</head>
<body>
	<%@ include file="adminNavbar.jsp"%>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="centered">
		<h1>
			<b>Seller Pending Requests</b>
		</h1>
		<br>
		<div class="login-container">
			<h3 align="center">
				<font color="green">${message}</font>
			</h3>
			<br>

			<table class="custom-table">
				<thead>
					<tr>
						<th>ID</th>
						<th>FULL NAME</th>
						<th>EMAIL</th>
						<th>GENDER</th>
						<th>REGISTRATION DATE</th>
						<th>STATUS</th>
						<th>ACTION</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${sdata}" var="s">

						<tr>
							<td>${s.id}</td>
							<td>${s.fullname}</td>
							<td>${s.email}</td>
							<td>${s.gender}</td>
							<td>${s.date}</td>
							<td>${s.sacceptence}</td>
							<td><a
								href='<c:url value="selsetstatus?id=${s.id}&status=true"></c:url>'><button
										class="btn btn-success"
										style="font-weight: bold; color: black; border-radius: 5px;">Accept</button></a>
								<a
								href='<c:url value="selsetstatus?id=${s.id}&status=false"></c:url>'><button
										class="btn btn-danger">Decline</button></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

		</div>
	</div>


</body>
</html>
