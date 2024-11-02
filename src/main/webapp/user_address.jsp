<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Address</title>
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
    padding-right: 240px;
        }

        .card {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
        }

        .card-body {
            padding: 10px;
            text-align: center;
        }

        .card-body h3 {
            color: #28a745;
            font-size: 1.8em;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 15px;
            text-align: left;
        }

        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
            color: #333;
        }

        .form-group input[type="text"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
            box-sizing: border-box;
        }

        .form-row {
            display: flex;
            justify-content: space-between;
        }

        .form-group.col-md-6,
        .form-group.col-md-4 {
            width: 48%;
        }

        .text-center {
            text-align: center;
        }

        button {
            background-color: #ffc107;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #e0a800;
        }
    </style>
</head>
<body>

    <%@ include file="all_component/navbar.jsp" %>
    <div class="container">
        <div class="card">
            <div class="card-body">
                <h3>Address</h3>

                <form action="" method="post">
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputAddress">Address</label>
                            <input type="text" id="inputAddress" name="address" required>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputLandmark">Landmark</label>
                            <input type="text" id="inputLandmark" name="landmark" required>
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <label for="inputCity">City</label>
                            <input type="text" id="inputCity" name="city" required>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="inputState">State</label>
                            <input type="text" id="inputState" name="state" required>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="inputPin">Pin</label>
                            <input type="text" id="inputPin" name="pin" required>
                        </div>
                    </div>

                    <div class="text-center">
                        <button type="submit">Add Address</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>