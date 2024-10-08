<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>

<<body class="BookBase">

	<header class="header">
		<h1 class="logo">
			<a href="index.jsp">DigitalBookRepository</a>
		</h1>
		<div class="search-login">
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2 " type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-success my-1 my-sm-2" type="submit">Search</button>
			</form>

			<a href="login.jsp" class="btn btn-success">Login</a> <a
				href="register.jsp" class="btn btn-primary text-white">Register</a>
		</div>
	</header>
	
	<!-- Sidebar -->
	<div class="sidebar" id="sidebar">
		<a href="#"><i class="fa-solid fa-house"></i><span> Home</span></a> <a
			href="#"><i class="fa-solid fa-book-open"></i><span> New</span></a> <a
			href="#"><i class="fa-solid fa-clock"></i><span> Recent</span></a> <a
			href="#"><i class="fa-solid fa-cog"></i><span> Settings</span></a> <a
			href="#"><i class="fa-solid fa-address-book"></i><span>Contact</span></a>
		  <a href="#"><i class="fa-solid fa-sign-out-alt"></i><span>Logout</span></a>
	</div>
=======
<body class="BookBase">

    <header class="header">
        <h1 class="logo">
            <a href="index.jsp">DigitalBookRepository</a>
        </h1>
        <div class="search-login">
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-success my-1 my-sm-2" type="submit">Search</button>
            </form>

            <!-- Show user details if logged in -->
            <c:if test="${not empty userobj}">
                <i class="fa-solid fa-cart-shopping fa-1x mt-1"></i>
                <a href="#" class="btn btn-success">{$userobj.name}</a> 
                <a href="logout.jsp" class="btn btn-primary text-white">Logout</a>
            </c:if>

            <!-- Show login/register options if not logged in -->
            <c:if test="${empty userobj}">
                <a href="login.jsp" class="btn btn-success">Login</a> 
                <a href="register.jsp" class="btn btn-primary text-white">Register</a>
            </c:if>
        </div>
    </header>

    <!-- Sidebar -->
    <div class="sidebar" id="sidebar">
        <a href="#"><i class="fa-solid fa-house"></i><span> Home</span></a>
        <a href="#"><i class="fa-solid fa-book-open"></i><span> New</span></a>
        <a href="#"><i class="fa-solid fa-clock"></i><span> Recent</span></a>
        <a href="#"><i class="fa-solid fa-cog"></i><span> Settings</span></a>
        <a href="#"><i class="fa-solid fa-address-book"></i><span> Contact</span></a>
        <!-- Only show logout link when logged in -->
        <%-- <c:if test="${not empty userobj}">
            <a href="logout.jsp"><i class="fa-solid fa-sign-out-alt"></i><span> Logout</span></a>
        </c:if> --%>
    </div>



</body>
</html>