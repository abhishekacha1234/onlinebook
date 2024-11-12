  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link rel="stylesheet" href="all_components/footer.css"/>
        <link rel="stylesheet" href="styles.css"/> <!-- Link to the custom CSS file -->
        <link rel="stylesheet" href="all_component/index.css">
    </head>
    <body class="login-page-background">
    <%@include file="all_component/navbar.jsp" %>
        <div class="container-fluid">
            <div class="row p-5 justify-content-center">
                <div class="col-md-4">
                    <div class="card shadow-lg login-card">
                        <div class="card-body">
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
                            <div class="text-center login-header">
                                <i class="fa fa-user-plus fa-2x" aria-hidden="true" style="color: #6a11cb;"></i>
                                <h5>Login</h5>
                            </div>

                            <form action="login" method="post">
                                <div class="form-group">
                                    <label>Enter Email *</label>
                                    <input type="email" name="email" required class="form-control login-input">
                                </div>
                                <div class="form-group">
                                    <label>Enter Password *</label>
                                    <input type="password" name="password" required class="form-control login-input">
                                </div>
                                <button type="submit" class="btn btn-primary btn-block login-button">Login</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
