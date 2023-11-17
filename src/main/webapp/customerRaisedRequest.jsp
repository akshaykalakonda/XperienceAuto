<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<!DOCTYPE html>
<html>
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

<style>
body {
	font-family: 'Poppins', sans-serif;
	margin: 0;
	padding: 0;
	background-color: aliceblue;
}

.card {
	border: 1px solid #ddd;
	border-radius: 5px;
	background-color: #ebecee;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	margin: 20px auto;
	max-width: 900px; /* Adjust the maximum width as needed */
	padding: 20px;
}

#employee {
	font-family: Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#employee td, #employee th {
	border: 1px solid #ddd;
	padding: 8px;
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
	font-size: 12px;
	cursor: pointer;
}
</style>
</head>
<body>
	<%@ include file="customerNavbar.jsp"%>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="card" style="margin-top: 10px;">
		<h3 align="center">Service Requests Raised by You..!</h3>
		<br>
		<br>

		<table id="employee">
			<tr bgcolor="black" style="color: white">
				<th>ID</th>
				<th>SERVICE TYPE</th>
				<th>DATE</th>
				<th>TIME</th>
				<th>DESCRIPTION</th>
				<th>STATUS</th>
			</tr>

			<c:forEach items="${rdata}" var="req">
				<tr>
					<td><c:out value="${req.id}" /></td>
					<td><c:out value="${req.servicetype}" /></td>
					<td><c:out value="${req.date}" /></td>
					<td><c:out value="${req.time}" /></td>
					<td><c:out value="${req.description}" /></td>

					<c:if test="${req.status=='Pending'}">
						<td style="background-color: #FDB147; color: white;"><b>Pending</b></td>
					</c:if>
					<c:if test="${req.status=='Accept'}">
						<td style="background-color: green; color: white;"><b>Accepted</b></td>
					</c:if>
					<c:if test="${req.status=='Reject'}">
						<td style="background-color: red; color: white;"><b>Rejected</b></td>
					</c:if>
					<c:if test="${req.status=='Completed'}">
						<td style="background-color: skyblue; color: white;"><b>Closed</b></td>
					</c:if>
				</tr>
			</c:forEach>
		</table>
	</div>

</body>
</html>
