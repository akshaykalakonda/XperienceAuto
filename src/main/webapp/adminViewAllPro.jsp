<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<%@page import="com.klef.jfsd.springboot.model.*"%>
<!-- /// seller table -->

<!DOCTYPE html>
<html>
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
	font-family: Arial, sans-serif;
	background-color: #f0f0f0;
	margin: 0;
	padding: 0;
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
	margin-top: 0px;
	background-color: aliceblue;
	width: 100%;
	padding: 0;
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
	.navbar-brand .logo-mobile {
		display: none;
	}
	.navbar-collapse {
		max-height: calc(100vh - 55px);
		overflow-y: auto;
	}
	.navbar-brand {
		display: flex;
		align-items: center;
		text-align: center;
		padding: 10px;
	}
	.navbar-toggle {
		float: left;
		margin-left: 15px;
		margin-right: 0;
	}
	.navbar-nav {
		padding-top: 0;
		padding-bottom: 0;
	}
	.navbar-nav li a {
		padding: 10px 20px;
		color: #fff;
	}
	.hide-in-mobile {
		display: none;
	}
}

.card {
	border: 1px solid #ddd;
	border-radius: 5px;
	background-color: #ebecee;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	margin: 20px auto;
	max-width: 1000px; /* Adjust the maximum width as needed */
	padding: 20px;
	margin-top: 100px;
}

#employee {
	font-family: Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#employee td, #employee th {
	border: 1px solid #ddd;
	padding: 8px;
	font-size: 16px;
	text-align: center;
}

#employee tr:nth-child(even) {
	background-color: white;
}

#employee tr:hover {
	background-color: #ddd;
}

#employee th {
	padding-top: 12px;
	padding-bottom: 12px;
	background-color: #000000;
	color: white;
}

.btn {
	background-color: skyblue;
	padding: 5px 16px;
	font-size: 20px;
	cursor: pointer;
}
</style>
</head>
<body>
	<%@ include file="adminNavbar.jsp"%>
	<div class="card">
		<h3 align="center">
			<u>View Products</u>

		</h3>
		<br>

		<table id="employee">
			<tr bgcolor="black" style="color: white">
				<th>ID</th>
				<th>NAME</th>
				<th>MANUFACTURER</th>
				<th>SELLER NAME</th>
				<th>PRICE</th>
				<th>IMAGE</th>

			</tr>

			<c:forEach items="${pdata}" var="emp">
				<tr>
					<td><c:out value="${emp.id}" /></td>
					<td><c:out value="${emp.name}" /></td>
					<td><c:out value="${emp.manufacturer}" />
					<td><c:out value="${emp.sellername}" />
					<td><c:out value="${emp.price}" /></td>
					<td><img src="p/${emp.id}" height="70px" alt="No image"
						class="product-image"></td>

				</tr>
			</c:forEach>
		</table>
	</div>

</body>
</html>