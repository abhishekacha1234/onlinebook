<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="com.entity.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin: Home</title>
    <!-- Bootstrap CDN for layout and icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
    

    <style>
        body {
            font-family: 'Arial', sans-serif;
            position: relative;
            min-height: 100vh;
            padding-top: 60px; /* Adjust for navbar */
        }
        .container {
            margin-top: 100px;
            text-align: center;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 20px;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.2);
            z-index: 10;
            height: 50vh;
        }
        h1 {
            font-weight: 600;
            color: #333;
            margin-bottom: 40px;
        }
        .card {
            border: none;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.15);
            transition: transform 0.4s ease-in-out, box-shadow 0.4s ease-in-out;
            border-radius: 12px;
            background-color: #f8f9fa;
        }
        .card:hover {
            transform: translateY(-15px);
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.3);
        }
        .card-body {
            padding: 30px;
        }
        .card-body i {
            font-size: 3rem;
            color: #6c757d;
            margin-bottom: 15px;
        }
        h4 {
            font-weight: 500;
            color: #495057;
        }
        .row {
            gap: 30px;
        }
    </style>
</head>
<body>

<%
    // Check if the user is logged in
    HttpSession sHttpSession = request.getSession(false); // Ensure this is only declared once
    User user = (sHttpSession != null) ? (User) sHttpSession.getAttribute("userobj") : null; // Use sHttpSession here

    if (user == null) {
        response.sendRedirect("login.jsp");
        return; // Stop further processing
    }
%>


<!-- Include navbar from external file -->
<jsp:include page="navbar.jsp" />

<!-- Admin content -->
<div class="container">
    <h1 class="text-center">Welcome Admin</h1>
    <div class="row justify-content-center gy-4">

        <!-- Add Books -->
        <div class="col-md-3">
            <a href="add_books.jsp">
                <div class="card">
                    <div class="card-body">
                        <i class="fas fa-plus-square"></i>
                        <h4>Add Books</h4>
                    </div>
                </div>
            </a>
        </div>

        <!-- All Books -->
        <div class="col-md-3">
            <a href="all_books.jsp">
                <div class="card">
                    <div class="card-body">
                        <i class="fa-solid fa-book-open"></i>
                        <h4>All Books</h4>
                    </div>
                </div>
            </a>
        </div>

        <!-- Orders -->
        <div class="col-md-3">
            <a href="orders.jsp">
                <div class="card">
                    <div class="card-body">
                        <i class="fas fa-box-open"></i>
                        <h4>Orders</h4>
                    </div>
                </div>
            </a>
        </div>

    </div>
</div>

<!-- Logout Modal -->
<div class="modal fade" id="logoutModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Logout</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                Are you sure you want to log out?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                <a href="../login.jsp" class="btn btn-primary">Logout</a>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS for modal and dropdown functionality -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
