<%@page import="com.company.dao.BookDaoImpl"%>
<%@page import="com.entity.User"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.company.util.DBUtil"%>
<%-- <%@page import="com.company.dao.BookDaoImpl"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>BookBase</title>
<link rel="navbar" href="all_component/navbar.jsp">
<link rel="stylesheet" href="all_component/index.css">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<style>
</style>
</head>
<body>
      <%
      User u= (User) session.getAttribute("userobj");

      %>
        <!-- Include Navbar -->
      <jsp:include page="all_component/navbar.jsp" />
     
	<main class="main-content">
	<!-- Start Recent Book -->
		<section class="recommended-books">
			<h2 class="section-title">RecentBook</h2>
			<a href="#" class="see-all">See All ></a>
			<div class="book-grid">
				<%
				BookDaoImpl dao2 = new BookDaoImpl(DBUtil.getConn());
				List<BookDtls> list2 =dao2.getRecentBooks();
				for(BookDtls b:list2){
					%>
					<div class="book-card">
						<%
				if (u ==null) {
				%>
				<a href="login.jsp" class="btn btn-success btn-sm ml-2">Add Cart</a>
				<%
				} else {
				%>
				<a href="cart?bid=<%=b.getBookId() %>&&uid=<%=u.getId() %>" class="btn btn-sucess btn-sm ml-2">Add Cart</a>
				<%
				}
				%>
					
					<img alt="" src="book/<%=b.getPhotoName() %>" style="width: 150px; height: 200px" class="img-thublin">
					<div class="book-details">
						<h3 class="book-title"><%=b.getBookName() %></h3>
						<p class="book-author"><%=b.getAuthor() %></p>
						
                            <a href="view_book.jsp?bid=<%=b.getBookId() %>" class="btn btn-primary btn-sm ml-1">View Details</a>
						
						
					</div>
				</div>
					
					<%
				}
				%>
				<div class="text-center mt-1">
                <a href="all_recent_book.jsp" class="btn btn-danger btn-block text-white">View All</a>
            </div>
				<!-- Add more book cards as needed -->
			</div>
		</section>
		<!-- End Recent Book -->
		
		<!-- Start New Book -->
		<section class="recommended-books">
			<h2 class="section-title">New Book</h2>
			<a href="#" class="see-all">See All ></a>
			<div class="book-grid">
			
			<%
				BookDaoImpl dao = new BookDaoImpl(DBUtil.getConn());
				List<BookDtls> list = dao.getNewBook();
				for(BookDtls b:list){
				%>
				<div class="book-card">
				<%
				if (u ==null) {
				%>
				<a href="login.jsp" class="btn btn-success btn-sm ml-2">Add Cart</a>
				<%
				} else {
				%>
				<a href="cart?bid=<%=b.getBookId() %>&&uid=<%=u.getId() %>" class="btn btn-sucess btn-sm ml-2">Add Cart</a>
				<%
				}
				%>
				<img alt="" src="book/<%=b.getPhotoName() %>" style="width: 150px; height: 200px"class="img-thublin">
					<div class="book-details">
						<h3 class="book-title"><%=b.getBookName() %></h3>
						<p class="book-author"><%=b.getAuthor() %></p>
						
						   <a href="view_book.jsp?bid=<%=b.getBookId() %>" class="btn btn-primary btn-sm ml-1">ViewDetails</a> 
						
					</div>
				</div>
				<%
				}
			%>
				
				<div class="text-center mt-1">
                <a href="all_new_book.jsp" class="btn btn-danger btn-block text-white">View All</a>
				<!-- Add more book cards as needed -->
			</div>
		</section>
		
<!-- End New Book -->
		
	</main>


</body>
</html>
