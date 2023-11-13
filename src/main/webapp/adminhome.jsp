<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>

<head>
<title>XperienceAuto</title>
<meta charset='utf-8'>
<link rel="icon" type="image/peg" href="images/logo.jpeg">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.0/chart.min.js"></script>
<script src="https://cdn.canvasjs.com/canvasjs.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<meta http-equiv='X-UA-Compatible' content='IE=edge'>
<style>
.body {
	margin: 0;
	padding: 0;
	overflow-x: hidden;
	font-family: 'Poppins', sans-serif;
	background-color: aliceblue;
}

#product-list {
	display: flex;
	flex-wrap: wrap;
	/* Allow items to wrap to the next row */
	justify-content: space-between;
	/* Add space between items */
	padding: 20px;
}

.statistics-container1 {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	margin-top: 50px;
	animation: fallIn 1.5s ease-in-out;
}

.statistics-box1 {
	flex: 1;
	max-width: 300px;
	background-color: white;
	padding: 20px;
	margin: 10px;
	box-shadow: 0 5px 10px rgba(163, 157, 157, 0.2);
	text-align: center;
	color: #0a0808;
	border-radius: 10px;
}

.product {
	background-color: #fff;
	border: 1px solid #ddd;
	border-radius: 5px;
	padding: 20px;
	width: calc(25% - 20px);
	/* Set a maximum of 4 items in a row */
	margin: 10px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

button {
	background-color: #007bff;
	color: #fff;
	border: none;
	padding: 5px 10px;
	cursor: pointer;
}

button:hover {
	background-color: #0056b3;
}

#shopping-cart {
	background-color: #fff;
	border: 1px solid #ddd;
	border-radius: 5px;
	padding: 20px;
	width: 300px;
	margin: 10px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

@media ( max-width : 768px) {
	.product {
		width: calc(50% - 20px);
		/* Set a maximum of 2 items in a row for smaller screens */
	}
}

h1 {
	text-align: center;
	margin-top: 90px;
	/* Add some top margin to separate from the navbar */
	font-size: 40px;
	color: #2B2E4A;
	/* Change the color to your preferred style */
}

.ag-format-container {
	width: 1142px;
	margin: 0 auto;
	margin-top: 20px;
}

.ag-courses_box {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-align: start;
	-ms-flex-align: start;
	align-items: flex-start;
	-ms-flex-wrap: wrap;
	flex-wrap: wrap;
	padding: 50px 0;
}

.ag-courses_item {
	-ms-flex-preferred-size: calc(33.33333% - 30px);
	flex-basis: calc(33.33333% - 30px);
	margin: 0 15px 30px;
	overflow: hidden;
	border-radius: 28px;
}

.ag-courses-item_link {
	display: block;
	padding: 30px 20px;
	background-color: #2971a1;
	overflow: hidden;
	position: relative;
}

.ag-courses-item_link2 {
	display: block;
	padding: 30px 20px;
	background-color: #FF5733;
	overflow: hidden;
	position: relative;
}

.ag-courses-item_link:hover, .ag-courses-item_link2:hover,
	.ag-courses-item_link:hover .ag-courses-item_date {
	text-decoration: none;
	color: #FFF;
}

.ag-courses-item_link:hover .ag-courses-item_bg {
	-webkit-transform: scale(10);
	-ms-transform: scale(10);
	transform: scale(10);
}

.ag-courses-item_link2:hover .ag-courses-item_bg {
	-webkit-transform: scale(10);
	-ms-transform: scale(10);
	transform: scale(10);
}

.ag-courses-item_title {
	min-height: 87px;
	margin: 0 0 25px;
	overflow: hidden;
	font-weight: bold;
	font-size: 50px;
	color: #FFF;
	z-index: 2;
	position: relative;
}

.ag-courses-item_date-box {
	font-size: 30px;
	color: #FFF;
	z-index: 2;
	position: relative;
}

.ag-courses-item_date {
	font-weight: bold;
	color: #f9b234;
	-webkit-transition: color .5s ease;
	-o-transition: color .5s ease;
	transition: color .5s ease
}

.ag-courses-item_bg {
	height: 128px;
	width: 128px;
	background-color: #FF5733;
	z-index: 1;
	position: absolute;
	top: -75px;
	right: -75px;
	border-radius: 50%;
	-webkit-transition: all .5s ease;
	-o-transition: all .5s ease;
	transition: all .5s ease;
}

.ag-courses_item:nth-child(2n) .ag-courses-item_bg {
	background-color: #2971a1;
}

.ag-courses_item:nth-child(3n) .ag-courses-item_bg {
	background-color: #FF5733;
}

.ag-courses_item:nth-child(4n) .ag-courses-item_bg {
	background-color: #952aff;
}

.ag-courses_item:nth-child(5n) .ag-courses-item_bg {
	background-color: #cd3e94;
}

.ag-courses_item:nth-child(6n) .ag-courses-item_bg {
	background-color: #4c49ea;
}

@media only screen and (max-width: 979px) {
	.ag-courses_item {
		-ms-flex-preferred-size: calc(50% - 30px);
		flex-basis: calc(50% - 30px);
	}
	.ag-courses-item_title {
		font-size: 24px;
	}
}

@media only screen and (max-width: 767px) {
	.ag-format-container {
		width: 96%;
	}
}

@media only screen and (max-width: 639px) {
	.ag-courses_item {
		-ms-flex-preferred-size: 100%;
		flex-basis: 100%;
	}
	.ag-courses-item_title {
		min-height: 72px;
		line-height: 1;
		font-size: 24px;
	}
	.ag-courses-item_link {
		padding: 22px 40px;
	}
	.ag-courses-item_date-box {
		font-size: 16px;
	}
}
/* Footer Styles */
.footer {
	bottom: 100%;
	background-color: #2B2E4A;
	color: white;
	text-align: center;
	padding: 20px;
}

.chart-container {
	display: inline-block;
	width: 250px; /* Set a fixed width */
	height: 250px; /* Set a fixed height */
	text-align: center; /* Align content horizontally at the center */
	margin: 10px;
}

.text-primary {
	color: #FF5733;
}

.statistics-box1 {
	flex: 1;
	max-width: 300px;
	background-color: white;
	padding: 20px;
	margin: 10px;
	box-shadow: 0 5px 10px rgba(163, 157, 157, 0.2);
	text-align: center;
	color: #0a0808;
	border-radius: 10px;
}

.statistics-box1 {
	flex: 1;
	max-width: 300px;
	background-color: white;
	padding: 20px;
	margin: 10px;
	box-shadow: 0 5px 10px rgba(163, 157, 157, 0.2);
	text-align: center;
	color: #0a0808;
	border-radius: 10px;
}

.pieChart, .barChart {
	width: 10px; /* Set your desired width */
	height: 10px; /* Set your desired height */
	margin: 0 auto; /* Center the charts */
}
</style>
</head>
<body>

	<%@ include file="adminNavbar.jsp"%>
	<br>
	<br>
	<div class="input-row">
		<div class="statistics-container1">
			<div class="statistics-box1">
				<div class="chart-container">
					<canvas id="pieChart"></canvas>
				</div>
			</div>

			<div class="statistics-box1">
				<div class="chart-container">
					<canvas id="barChart"></canvas>
				</div>
			</div>
		</div>
	</div>

	<div id="chartContainer" style="width: 100%;"></div>
	<div class="ag-format-container">
		<div class="ag-courses_box">
			<div class="ag-courses_item">
				<a href="#" class="ag-courses-item_link">
					<div class="ag-courses-item_bg"></div>
					<div class="ag-courses-item_title" style="text-align: center;">
						${ccount}</div>
					<div class="ag-courses-item_date-box" style="text-align: center;">
						Customer Count <span class="ag-courses-item_date"> </span>
					</div>
				</a>
			</div>
			<div class="ag-courses_item">
				<a href="#" class="ag-courses-item_link2">
					<div class="ag-courses-item_bg"></div>
					<div class="ag-courses-item_title" style="text-align: center;">
						${pcount}</div>
					<div class="ag-courses-item_date-box" style="text-align: center;">
						Product Count <span class="ag-courses-item_date"> </span>
					</div>
				</a>
			</div>
			<div class="ag-courses_item">
				<a href="#" class="ag-courses-item_link">
					<div class="ag-courses-item_bg"></div>

					<div class="ag-courses-item_title" style="text-align: center;">
						${scount}</div>
					<div class="ag-courses-item_date-box" style="text-align: center;">
						Seller Count <span class="ag-courses-item_date"> </span>
					</div>
				</a>
			</div>

		</div>
	</div>

	<script>
		// Pie Chart Data
		var acceptedCount = ${pcount};
		var rejectedCount = ${scount};

		var pieCtx = document.getElementById('pieChart').getContext('2d');
		var pieChart = new Chart(pieCtx, {
			type : 'pie',
			data : {
				labels : [ 'Product Count', 'Seller Count' ],
				datasets : [ {
					data : [ acceptedCount, rejectedCount ],
					backgroundColor : [ 'rgba(75, 192, 192, 0.2)',
							'rgba(255, 99, 132, 0.2)' ],
					borderColor : [ 'rgba(75, 192, 192, 1)',
							'rgba(255, 99, 132, 1)' ],
					borderWidth : 1
				} ]
			},
			options : {
				responsive : true,
				maintainAspectRatio : false,
				aspectRatio : 1, // Set the aspect ratio (width/height) to maintain
			}
		});

		// Bar Chart Data
		var bCount = ${scount};
		var eCount = ${pcount};
		var mCount = ${ccount};
		var barCtx = document.getElementById('barChart').getContext('2d');
		var barChart = new Chart(barCtx, {
			type : 'bar',
			data : {
				labels : [ 'Seller', 'Product', 'Customer' ],
				datasets : [ {
					label : 'Count',
					data : [ bCount, eCount, mCount ],
					backgroundColor : [ 'rgba(255, 99, 132, 0.2)',
							'rgba(54, 162, 235, 0.2)',
							'rgba(255, 206, 86, 0.2)' ],
					borderColor : [ 'rgba(255, 99, 132, 1)',
							'rgba(54, 162, 235, 1)', 'rgba(255, 206, 86, 1)' ],
					borderWidth : 1
				} ]
			},
			options : {
				responsive : true,
				maintainAspectRatio : false,
				aspectRatio : 1, // Set the aspect ratio (width/height) to maintain
				scales : {
					y : {
						beginAtZero : true
					}
				}
			}
		});
	</script>
</body>

</html>