<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sell Book</title>
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
     padding-right: 250px;
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

        .card-body h5 {
            color: #007bff;
            font-size: 1.5em;
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

        .form-group input[type="text"],
        .form-group input[type="number"],
        .form-group input[type="file"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
            box-sizing: border-box;
        }

        .form-group input[type="file"] {
            padding: 3px;
        }

        button {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

    <%@ include file="all_component/navbar.jsp" %>

    <div class="container">
        <div class="card">
            <div class="card-body">
                <h5>Sell Old Book</h5>

                <form action="" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="bookName">Book Name*</label>
                        <input name="bname" type="text" id="bookName" required>
                    </div>

                    <div class="form-group">
                        <label for="authorName">Author Name*</label>
                        <input name="author" type="text" id="authorName" required>
                    </div>

                    <div class="form-group">
                        <label for="price">Price*</label>
                        <input name="Price" type="number" id="price" required>
                    </div>

                    <div class="form-group">
                        <label for="bookImage">Upload photo</label>
                        <input name="bimg" type="file" id="bookImage">
                    </div>

                    <button type="submit">Sell</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>