<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
        <link rel="stylesheet" href="register.css">
        <link rel="stylesheet" href="all_component/index.css"> <!-- Link to the custom CSS file -->
    </head>
    <body class="register-page-background">
	<jsp:include page="all_component/navbar.jsp" />
        <div class="container-fluid">
            <div class="row p-5 justify-content-center">
                <div class="col-md-4">
                    <div class="card register-card">
                        <div class="card-body">
                            <c:if test="${not empty succMsg}">
                                <div class="container text-center">
                                    <div class="alert alert-success" role="alert">
                                        ${succMsg}
                                    </div>
                                </div>
                                <c:remove var="succMsg" />
                            </c:if>
                            <c:if test="${not empty failedMsg}">
                                <div class="container text-center">
                                    <div class="alert alert-danger" role="alert">
                                        ${failedMsg}
                                    </div>
                                </div>
                                <c:remove var="failedMsg" />
                            </c:if>
                            <div class="text-center register-header">
                                <i class="fa fa-user-plus fa-2x" aria-hidden="true" style="color: #42a5f5;"></i>
                                <h5>Registration</h5>
                            </div>
                            <form action="RegisterServlet" method="post">
                                <div class="form-group">
                                    <label>Name *</label>
                                    <input type="text" name="fname" required class="form-control register-input">
                                </div>
                                <div class="form-group">
                                    <label>Email Address *</label>
                                    <input type="email" name="email" required class="form-control register-input">
                                </div>
                                <div class="form-group">
                                    <label>Phone Number *</label>
                                    <input type="number" name="phno" required class="form-control register-input">
                                </div>
                                <div class="form-group">
                                    <label>Password *</label>
                                    <input type="password" name="password" required class="form-control register-input">
                                </div>
                                <div class="form-check">
                                    <input type="checkbox" name="check" class="form-check-input">
                                    <label class="form-check-label">Agree to terms and conditions</label>
                                </div>
                                <br>
                                <button type="submit" class="btn btn-primary badge-pill btn-block signup-button">Sign up</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
