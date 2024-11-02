<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Helpline</title>
    <link rel="stylesheet" href="all_component/index.css">
<%@include file="all_component/navbar.jsp"%>

    <style type="text/css">
        body {
           background-color: #f7f7f7;
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    display: flex; /* Enable flexbox */
    justify-content: center; /* Center horizontally */
    align-items: center; /* Center vertically */
    height: 100vh; /* Full viewport height */
        }

        .container {
          width: 80%; /* Maintain your existing width */
    max-width: 1200px; /* Optional: set a maximum width */
    margin-top: 0; /* Remove top margin to center vertically */
    text-align: center; /* Center text inside container */
    padding-right: 500px;
        }

        .icon {
            color: #28a745;
            font-size: 80px;
            margin-bottom: 20px;
        }

        h3 {
            color: #333;
            font-size: 1.8em;
            margin: 10px 0;
        }

        h4 {
            color: #555;
            font-size: 1.5em;
            margin: 5px 0;
        }

        h5 {
            color: #007bff;
            font-size: 1.2em;
            margin: 10px 0;
        }

        .btn-home {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            text-decoration: none;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn-home:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

    <%@ include file="all_component/navbar.jsp" %>
    <div class="container">
        <div class="icon">
            <i class="fas fa-phone-square-alt"></i>
        </div>
        <h3>24/7 Service</h3>
        <h4>Help Line Number</h4>
        <h5>+0671 869899023</h5>
        <a href="index.jsp" class="btn-home">Home</a>
    </div>

</body>
</html>