<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
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

<style>
body {
	margin: 0;
	padding: 0;
	overflow-x: hidden;
	font-family: 'Poppins', sans-serif;
	background-color: aliceblue;
}

.navbar {
	background-color: #2B2E4A;
	border-color: #2B2E4A;
}

.container12 {
	max-width: 1200px;
	margin: 20px auto;
	padding: 20px;
}

.data-card {
	background-color: #fff;
	border-radius: 8px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
	padding: 20px;
	margin-bottom: 20px;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.customer-info {
	flex: 1;
	margin-right: 20px;
	color: black;
}

.customer-info h3 {
	margin-bottom: 10px;
}

.customer-info p {
	margin: 5px 0;
}

.buttons {
	display: flex;
	align-items: center;
}

.buttons button {
	background-color: #dc3545;
	color: white;
	border: none;
	padding: 6px 10px;
	border-radius: 3px;
	cursor: pointer;
	margin-left: 10px;
}

.buttons button:hover {
	background-color: #c82333;
}

@media ( min-width : 768px) {
	.container12 {
		display: flex;
		flex-wrap: wrap;
		justify-content: space-between;
	}
	.data-card {
		flex-basis: calc(50% - 20px);
	}
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


	<h2 align="center">
		<b>Customer-Information</b>
	</h2>
	<h3 align="center">
		<font color="red"><b>${message}</b></font>
	</h3>
	<br>
	<div class="container12">

		<c:forEach items="${cdata}" var="cus">
			<div class="data-card"
				style="background-image: url('images/frame.jpeg'); background-repeat: no-repeat; background-size: 100% 100%; background-size: cover;">
				<div class="customer-info">
					<h3>
						<b>${cus.fullname}</b>
					</h3>
					<p>${cus.id}</p>
					<p>${cus.email}</p>

				</div>
				<div class="buttons">
					<a href='<c:url value="cusview?id=${cus.id}"></c:url>'>
						<button style="background-color: blue;">
							<i class="fas fa-eye"></i><b> View</b>
						</button>
					</a> <a href='<c:url value="cusdelete?id=${cus.id}"></c:url>'>
						<button>
							<i class="fas fa-trash"></i><b> Delete</b>
						</button>
					</a>
				</div>
			</div>
		</c:forEach>
		<!-- Add more data cards for customer data as needed -->
	</div>

</body>

</html>
