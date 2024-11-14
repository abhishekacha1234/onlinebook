<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Edit Profile</title>
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
    - width: 80%; /* Maintain your existing width */
    max-width: 1200px; /* Optional: set a maximum width */
    margin-top: 0; /* Remove top margin to center vertically */
    text-align: center; /* Center text inside container */
    padding-right: 320px;
        }

        .card {
            background-color: white;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }

        .card-body h4 {
            color: #007bff;
            text-align: center;
            font-size: 1.5em;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            font-weight: bold;
            color: #333;
            display: block;
            margin-bottom: 5px;
        }

        .form-group input[type="text"],
        .form-group input[type="email"],
        .form-group input[type="number"],
        .form-group input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 1em;
        }

        .text-center {
            text-align: center;
        }

        .btn-submit {
            background-color: #007bff;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
            font-size: 1em;
            margin-top: 10px;
            transition: background-color 0.3s;
        }

        .btn-submit:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

    

    <div class="container">
        <div class="card">
            <div class="card-body">
                <h4>Edit Profile</h4>
                
                            <c:if test="${not empty failedMsg}">
                                <div class="container text-center">
                                    <div class="alert alert-danger" role="alert">
                                        ${failedMsg}
                                    </div>
                                </div>
                                <c:remove var="failedMsg" />
                            </c:if>
                            <c:if test="${not empty succMsg}">
                                <div class="container text-center">
                                    <div class="alert alert-success" role="alert">
                                        ${succMsg}
                                    </div>
                                </div>
                                <c:remove var="succMsg" />
                            </c:if>
                <form action="update_profile" method="post">
                <input type="hidden" value="${userobj.id }" name="id">
                    <div class="form-group">
                        <label for="fullName">Enter Full Name</label>
                        <input type="text" id="fullName" name="fname" required="required" value="${userobj.name}">
                    </div>

                    <div class="form-group">
                        <label for="email">Email Address</label>
                        <input type="email" id="email" name="email" required="required" value="${userobj.email}">
                    </div>

                    <div class="form-group">
                        <label for="phone">Phone No</label>
                        <input type="number" id="phone" name="phno" required="required" value="${userobj.phno}">
                    </div>

                    <div class="form-group">
                        <label for="password">Password</label>
                        <input type="password" id="password" name="password" required="required">
                    </div>

                    <div class="text-center">
                        <button type="submit" class="btn-submit">Update</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

</body>
</html>