<%@page import="com.company.util.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%@ page import="com.entity.*, com.company.dao.*, java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart Page</title>
<link rel="navbar" href="all_component/navbar.jsp">
<link rel="stylesheet" href="all_component/index.css">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">  
</head>

<body style="background-color: #f0f1f2; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0;">
<jsp:include page="all_component/navbar.jsp" /> 

<c:if test="${empty userobj}">
    <c:redirect url="login.jsp"></c:redirect>
</c:if>

<c:if test="${not empty succMsg}">
    <div class="alert alert-success" role="alert">${succMsg}</div>
    <c:remove var="succMsg" scope="session"/>
</c:if>

<c:if test="${not empty failedMsg}">
    <div class="alert alert-danger" role="alert">${failedMsg}</div>
    <c:remove var="failedMsg" scope="session"/>
</c:if>

<div class="container">
    <div class="row justify-content-center" style="gap: 20px;">
        <!-- First Column (Left Side) -->
        <div class="col-md-5">
            <div class="card bg-white w-100">
                <div class="card-body">
                    <h3 class="text-center text-success">Item Details</h3>
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">Book Name</th>
                                <th scope="col">Author</th>
                                <th scope="col">Price</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                User u = (User) session.getAttribute("userobj");
                                CartDAOImpl dao = new CartDAOImpl(DBUtil.getConn());
                                List<Cart> cartList = null;
                                double totalPrice = 0.00;

                                try {
                                    cartList = dao.getBoookByuser(u.getId());
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }

                                if (cartList != null && !cartList.isEmpty()) {
                                    for (Cart c : cartList) {
                                        totalPrice += c.getPrice();
                            %>
                            <tr>
                                <td><%= c.getBook_name() %></td>
                                <td><%= c.getAuthor() %></td>
                                <td><%= c.getPrice() %></td>
                                <td>
                                    <a href="remove_book?bid=<%= c.getBid() %>&uid=<%= c.getUid() %>" class="btn btn-sm btn-danger">Remove</a>
                                </td>
                            </tr>
                            <%  
                                    } 
                            %>
                            <tr>
                                <td colspan="2"></td>
                                <td><strong>Total Price</strong></td>
                                <td><strong><%= totalPrice %></strong></td>
                            </tr>
                            <%  
                                } else {
                            %>
                            <tr>
                                <td colspan="4" class="text-center">No items in the cart.</td>
                            </tr>
                            <%  
                                }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <!-- Second Column (Right Side, Form) -->
        <div class="col-md-5">
            <div class="card bg-white w-100">
                <div class="card-body">
                    <h3 class="text-center text-success">Your Selected Item</h3>
                    <form action="order" method="post">
                    <input type="hidden" value="${userobj.id }" name="id">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputName4">Name</label> 
                                <input type="text" name="username" class="form-control" id="inputName4" value="${userobj.name}">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputEmail4">Email</label>
                                <input type="email" name="email" class="form-control" id="inputEmail4" value="${userobj.email}">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputPhone4">Phone Number</label>
                                <input type="tel" name="phno" class="form-control" id="inputPhone4" value="${userobj.phno}">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputAddress4">Address</label>
                                <input type="text" name="address" class="form-control" id="inputAddress4">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputLandmark4">Landmark</label>
                                <input type="text" name="landmark" class="form-control" id="inputLandmark4">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputCity4">City</label>
                                <input type="text" name="city" class="form-control" id="inputCity4">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputLandmark4">State</label>
                                <input type="text" name="state" class="form-control" id="inputLandmark4">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputCity4">Pincode</label>
                                <input type="text" name="pincode" class="form-control" id="inputCity4">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="paymentMode">Payment Mode</label>
                            <select class="form-control" id="paymentMode" name="payment">
                                <option value="noselect">---select---</option>
                                <option value="COD">Cash on Delivery</option>
                            </select>
                        </div>
                        <div class="text-center">
                            <button type="submit" class="btn btn-warning">Order Now</button>
                            <a href="index.jsp" class="btn btn-warning">Continue Shopping</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
