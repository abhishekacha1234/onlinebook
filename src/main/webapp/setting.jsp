<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Profile</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
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
            padding-right: 90px;
        }

        h3 {
            margin-bottom: 30px;
            color: #333;
        }

        .row {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding: 20px;
        }

        .col {
            width: 30%;
            margin: 10px;
        }

        .card {
            border: none;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.15);
            transition: transform 0.4s ease-in-out, box-shadow 0.4s ease-in-out;
            border-radius: 12px;
            background-color: #f8f9fa;
        }

        .card:hover {
            transform: scale(1.05);
        }

        .card-body {
            padding: 10px;
        }
        
        .card-body i {
            font-size: 3rem;
            color: #6c757d;
            margin-bottom: 15px;
        }

        .text-primary {
            color: #007bff;
        }

        .text-warning {
            color: #ffc107;
        }

        .text-danger {
            color: #dc3545;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        a:hover {
            text-decoration: none;
        }

        h4, p {
            margin: 0;
        }

        p {
            color: #555;
            font-size: 14px;
            margin-top: 8px;
        }
    </style>
</head>
<body>

   

    <div class="container">
        <h3>Hii, user</h3>

        <div class="row">
            <div class="col">
                <a href="sell_book.jsp">
                    <div class="card">
                        <div class="card-body">
                            <div class="text-primary">
                                  <i class="fa-solid fa-book-open"></i>                            
                            </div>
                            <h4>Sell new Book</h4>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col">
                <a href="edit_profile.jsp">
                    <div class="card">
                        <div class="card-body">
                            <div class="text-primary">
                                <i class="fas fa-user-shield"></i>
                            </div>
                            <h4>Login & Security (Edit Profile)</h4>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col">
                <a href="user_address.jsp">
                    <div class="card">
                        <div class="card-body">
                            <div class="text-warning">
                                <i class="fas fa-location-arrow"></i>
                            </div>
                            <h4>Your Address</h4>
                            <p>Edit Address</p>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col">
                <a href="order.jsp">
                    <div class="card">
                        <div class="card-body">
                            <div class="text-danger">
                                <i class="fas fa-shopping-bag"></i>
                            </div>
                            <h4>My Order</h4>
                            <p>Track Your Order</p>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col">
                <a href="helpline.jsp">
                    <div class="card">
                        <div class="card-body">
                            <div class="text-primary">
                                <i class="fas fa-life-ring"></i>
                            </div>
                            <h4>Help Center</h4>
                            <p>24*7 Service</p>
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </div>

</body>
</html>