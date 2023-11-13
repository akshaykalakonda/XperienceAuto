<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<%@page import="com.klef.jfsd.springboot.model.*"%>
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
/* Global Styles */
body {
	margin: 0;
	padding: 0;
	overflow-x: hidden;
	font-family: 'Poppins', sans-serif;
	background-color: aliceblue;
}

/* Product Card Styles */
#product-list {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
	padding: 20px;
}

.product {
	background-color: #fff;
	border: 1px solid #ddd;
	border-radius: 5px;
	padding: 20px;
	width: calc(25% - 20px);
	margin: 10px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	text-align: center;
	overflow: hidden;
	font-size: medium;
}

.product img.product-image {
	max-width: 100%;
	height: 200px;
	/* Adjust the height as needed */
	width: 200px;
	/* Adjust the width as needed */
	display: block;
	margin: 0 auto;
	border-radius: 5px;
}

button {
	background-color: #007bff;
	color: #fff;
	border: none;
	padding: 5px 10px;
	cursor: pointer;
}

button:hover {
	background-color: black;
}

/* Shopping Cart Styles */
#shopping-cart {
	background-color: #fff;
	border: 1px solid #ddd;
	border-radius: 5px;
	padding: 20px;
	width: 100%;
	margin: 10px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

#shopping-cart img.product-image {
	max-width: 80px;
	height: auto;
	border-radius: 5px;
	margin-bottom: 10px;
}

@media ( max-width : 768px) {
	.product {
		width: calc(50% - 20px);
	}
}

h1 {
	text-align: center;
	margin-top: 90px;
	font-size: 40px;
	color: #2B2E4A;
}

#shopping-cart table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 20px;
}

#shopping-cart table th, #shopping-cart table td {
	padding: 10px;
	text-align: center;
}

#shopping-cart table th {
	background-color: #2B2E4A;
	color: white;
}

#shopping-cart table tbody tr:nth-child(even) {
	background-color: #f2f2f2;
}

#shopping-cart table tbody tr:nth-child(odd) {
	background-color: #e6e6e6;
}

#shopping-cart table tbody td {
	border-bottom: 1px solid #ddd;
}

#shopping-cart table tfoot td {
	background-color: #2B2E4A;
	color: white;
	font-weight: bold;
}

/* Notification Styles */
.notification {
	position: fixed;
	top: 20px;
	right: 20px;
	background-color: #007bff;
	color: #fff;
	border-radius: 5px;
	padding: 15px;
	z-index: 9999;
	box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
	transition: transform 0.3s ease-in-out, opacity 0.3s ease-in-out;
	opacity: 0;
	transform: translateY(-20px);
}

.notification.show {
	opacity: 1;
	transform: translateY(0);
}

.blink_text {
	animation-name: blinker;
	animation-duration: 1s;
	animation-timing-function: linear;
	animation-iteration-count: infinite;
}

@
keyframes blinker { 0% {
	opacity: 1.0;
}

50
%
{
opacity
:
0.0;
}
100
%
{
opacity
:
1.0;
}
}
.btn-custom {
	background-color: #FF5733;
	/* Change this to your desired button color */
	color: white;
	/* Text color for the button */
}

.navbar-form {
	margin-right: 15px;
	margin-top: 20px;
}

.navbar-form .form-group {
	margin-bottom: 0;
}

/* Adjust the product listing layout */
#product-list {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
	padding: 20px;
	margin-top: 100px;
	/* Adjust the margin to separate from the navbar */
}

/* Add responsive styles for smaller screens */
@media ( max-width : 768px) {
	/* ... (existing styles) */
	/* Style the small search bar in the top right corner */
	.navbar-form {
		margin-left: 0;
		position: absolute;
		top: 250px;
	}
	.navbar-form .form-group {
		margin-bottom: 0;
	}
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

.product {
	/* Your existing styles for product cards */
	/* Add the following lines for the hover effect */
	transition: transform 0.2s ease-in-out;
}

.product:hover {
	transform: scale(1.05);
	/* Adjust the scale factor as needed for the desired effect */
	box-shadow: 0 2px 8px rgba(0, 0, 0, 0.2);
}

/* Pagination Styles */
.pagination {
	display: flex;
	justify-content: center;
	align-items: center;
	background-color: white; /* Set the background color to white */
	padding: 10px; /* Add padding to the container, both top and bottom */
	width: 100%;
}

.pagination a {
	color: black;
	padding: 10px 15px;
	align-items: center;
	text-decoration: none;
	border: 1px solid #ddd;
	margin: 0 5px;
	background-color: white;
	/* Set the background color to white for each box */
	border-radius: 5px; /* Add rounded corners to the boxes */
	transition: background-color 0.3s;
	display: inline-block;
}

.pagination a.active {
	background-color: #007bff;
	/* Change the background color for the active page */
	color: white;
	border: 1px solid #007bff;
}

.pagination a:hover:not(.active) {
	background-color: #ddd;
	color: #007bff; /* Change the text color on hover */
}
</style>
</head>

<body>

	<%@ include file="adminNavbar.jsp"%><br>
	<br>
	<!-- Product Listing -->
	<br>
	<br>
	<h2 style="text-align: center;">
		<b>Available Automobile Products</b>
	</h2>

	<form class="navbar-form navbar-left">
		<div class="form-group">
			<label style="color: #FF5733;"><b>Search&nbsp&nbsp</b></label> <input
				type="search" id="searchInput" class="form-control"
				placeholder="Type Here">

			<button class="form-control" id="searchInput" type="submit">
				<i class="glyphicon glyphicon-search"></i>
			</button>

		</div>
	</form>

	<div id="product-list">
		<div id="cart-notification" class="notification"></div>
		<c:forEach items="${pdata}" var="p">
			<div class="product">
				<h2>${p.name}</h2>
				<img src="p/${p.id}" alt="No image" class="product-image">
				<p>Manufacturer : ${p.manufacturer}</p>
				<p>Price: &#8377; ${p.price}</p>
			</div>
		</c:forEach>
		<!-- Repeat the product cards as needed -->
	</div>
	<!-- Pagination links -->
	<div class="pagination">
		<c:choose>
			<c:when test="${currentPage > 1}">
				<a href="?page=${currentPage - 1}">&laquo; Previous</a>
			</c:when>
			<c:otherwise>
				<span class="disabled">&laquo; Previous</span>
			</c:otherwise>
		</c:choose>

		<c:forEach begin="1" end="${totalPages}" var="pageNumber">
			<c:choose>
				<c:when test="${pageNumber == currentPage}">
					<a class="active" href="?page=${pageNumber}">${pageNumber}</a>
				</c:when>
				<c:otherwise>
					<a href="?page=${pageNumber}">${pageNumber}</a>
				</c:otherwise>
			</c:choose>
		</c:forEach>

		<c:choose>
			<c:when test="${currentPage < totalPages}">
				<a href="?page=${currentPage + 1}">Next &raquo;</a>
			</c:when>
			<c:otherwise>
				<span class="disabled">Next &raquo;</span>
			</c:otherwise>
		</c:choose>
	</div>
	<script>
        // Previous JavaScript code for adding to the cart

        const searchInput = document.getElementById('searchInput');
        const products = document.querySelectorAll('.product');

        searchInput.addEventListener('input', function () {
            const searchText = searchInput.value.toLowerCase();

            products.forEach(product => {
                const productName = product.querySelector('h2').textContent.toLowerCase();
                if (productName.includes(searchText)) {
                    product.style.display = 'block';
                } else {
                    product.style.display = 'none';
                }
            });
        });
    </script>
</body>

</html>