<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">

<head>
<%
  String empuname = (String) session.getAttribute("cname");
  if(empuname == null) {
    response.sendRedirect("customerLogin");
  }
%>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background-color: aliceblue;
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
            margin-top: 0;
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
        @media (max-width: 768px) {
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

        /* Payment ID Display Styles */
        #payment-id {
            font-size: 24px;
            margin: 20px 0;
        }

        /* Download Link Styles */
        #download-link {
            display: inline-block;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 5px;
            font-weight: bold;
            margin-top: 20px;
        }

        #download-link:hover {
            background-color: #0056b3;
        }

        /* Hide the "Print PDF" button when printing */
        @media print {
            #print-button {
                display: none;
            }
        }

        /* Center content vertically and horizontally */
        .center-content {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 90vh;
        }

        /* Button Styles */
        .btn-custom {
            background-color: #FF5733;
            /* Your desired button color */
            color: white;
            /* Text color for the button */
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .btn-custom:hover {
            background-color: #FF4500;
            /* Change the hover color as desired */
        }
        @media (max-width: 768px) {
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
    <div class="container center-content">
        <img src="images/payment.PNG" alt="Payment" style="width: 15%;">
        <h1 style="margin-top: 20px; color: green"><b>Payment Successful</b></h1>
        <div id="payment-id" style="font-size: 24px;">Your order with Payment ID "<b><span${payment}
                    id="payment-id-value"></span></b>" has been successfully processed.</div>
        <button class="btn-custom" id="print-button" onclick="printPDF()">Print PDF</button>
    </div>

    <script>
        // Function to get the value of a query parameter from the URL
        function getQueryParam(name) {
            const urlParams = new URLSearchParams(window.location.search);
            return urlParams.get(name);
        }

        // Get the payment_id from the URL
        const paymentId = getQueryParam('payment_id');

        // Get the element where the payment ID will be displayed
        const paymentIdValue = document.getElementById('payment-id-value');

        // Check if paymentId is not null and display it
        if (paymentId) {
            paymentIdValue.textContent = paymentId;
        } else {
            paymentIdValue.textContent = 'Payment ID not found in the URL.';
        }

        function printPDF() {
            // Check if paymentId is not null
            if (paymentId) {
                // Print the page
                window.print();
            } else {
                alert('Payment ID not found in the URL.');
            }
        }
    </script>

</body>

</html>