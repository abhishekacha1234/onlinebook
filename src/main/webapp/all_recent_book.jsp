<%@page import="com.entity.User"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.company.util.DBUtil"%>
<%@page import="com.company.dao.BookDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BookBase</title>
<link rel="stylesheet" href="all_component/index.css">
<%@include file="all_component/navbar.jsp"%>

<style type="text/css">
/* Center container */
.center-container {
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	margin: 0 auto;
	width: 80%; /* Adjust the width as needed */
}

/* Grid styling for book sections */
.recommended-books .book-grid,
.categories .book-grid {
	display: grid;
	grid-template-columns: repeat(4, 1fr);
	grid-gap: 20px;
}

/* Styling for each book card */
.book-card {
	border: 5px solid #ddd;
	border-radius: 18px;
	overflow: hidden;
	background-color: #fff;
	text-align: center;
}

/* Image styling */
.book-card img {
	width: 300px;
	height: 250px;
	object-fit: cover;
	margin-bottom: 10px;
}



/* Book details styling */
.book-details {
	padding: 15px;
}

.book-title {
	font-size: 18px;
	font-weight: bold;
	margin-bottom: 5px;
}

.book-author {
	font-size: 16px;
	color: #666;
}

.book-rating {
	margin-top: 5px;
}

#toast {
	min-width: 300px;
	position: fixed;
	bottom: 30px;
	left: 50%;
	margin-left: -150px;
	background: #333;
	padding: 10px;
	color: white;
	text-align: center;
	z-index: 1;
	font-size: 18px;
	visibility: hidden;
	box-shadow: 0px 0px 100px #000;
}

#toast.display {
	visibility: visible;
	animation: fadeIn 0.5s, fadeOut 0.5s 2.5s;
}

@keyframes fadeIn {
	from {
		bottom: 0;
		opacity: 0;
	}
	to {
		bottom: 30px;
		opacity: 1;
	}
}

@keyframes fadeOut {
	from {
		bottom: 30px;
		opacity: 1;
	}
	to {
		bottom: 0;
		opacity: 0;
	}
}
</style>
</head>
<body>

<%
	User u = (User) session.getAttribute("userobj");
%>

<c:if test="${not empty addCart}">
	<div id="toast">${addCart}</div>
	<script type="text/javascript">
		function showToast(content) {
		    document.getElementById('toast').classList.add("display");
		    document.getElementById('toast').innerHTML = content;
		    setTimeout(() => {
		        document.getElementById("toast").classList.remove("display");
		    }, 2000);
		}	
		showToast();
	</script>
	<c:remove var="addCart" scope="session" />
</c:if>

<div class="center-container">
	<section class="recommended-books">
		<h2 class="section-title">New Book</h2>
		<a href="#" class="see-all">See All ></a>
		<div class="book-grid">

			<%
			BookDaoImpl dao1 = new BookDaoImpl(DBUtil.getConn());
            List<BookDtls> list = dao1.getAllRecentBook();
            for (BookDtls b : list) {
			%>
			<div class="book-card">
				<%
				if (u == null) {
				%>
				<a href="login.jsp" class="btn btn-success btn-sm ml-2">Add Cart</a>
				<%
				} else {
				%>
				<a href="cart?bid=<%=b.getBookId()%>&&uid=<%=u.getId()%>"
					class="btn btn-success btn-sm ml-2">Add Cart</a>
				<%
				}
				%>
				<img alt="" src="book/<%=b.getPhotoName()%>" class="img-thumbnail">
				<div class="book-details">
					<h3 class="book-title"><%=b.getBookName()%></h3>
					<p class="book-author"><%=b.getAuthor()%></p>
					<a href="view_book.jsp?bid=<%=b.getBookId()%>"
						class="btn btn-primary btn-sm ml-1">View Details</a>
				</div>
			</div>
			<%
			}
			%>
		</div>
	</section>
</div>

</body>
</html>
