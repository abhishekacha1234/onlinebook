<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.company.util.DBUtil"%>
<%@page import="com.company.dao.BookDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<jsp:include page="navbar.jsp" />
    <!-- Dark Header Table -->
    <table class="table">
        <thead class="bg-dark text-white">
            <tr>
            	<th scope="col">ID</th>
                <th scope="col">Image</th>
                <th scope="col">Book Name</th>
                <th scope="col">Author</th>
                <th scope="col">Price</th>
                <th scope="col">Categories</th>
                <th scope="col">Status</th>
                <th scope="col">Action</th>
            </tr>
        </thead>
        <tbody>
        <%
        BookDaoImpl dao=new BookDaoImpl(DBUtil.getConn());
        List<BookDtls> list = dao.getAllBooks();
        for(BookDtls b:list){
        	%>
        	<tr>
                <td><%= b.getBookId() %></td>
                    <td>
                       <img src="../book/<%=b.getPhotoName()%>" style="width:50px; height:50px;">
                    </td>
                    <td><%= b.getBookName() %></td>
                    <td><%= b.getAuthor() %></td>
                    <td><%= b.getPrice() %></td>
                    <td><%= b.getBookCategory() %></td>
                    <td><%= b.getStatus() %></td>
                <td>
                	<a href="edit_books.jsp?id=<%=b.getBookId() %>" class="btn btn-sm btn-primary custom-edit-btn">Edit</a>
                    <a href="../delete?id=<%=b.getBookId() %>" class="btn btn-sm btn-danger custom-delete-btn">Delete</a>

                </td>
            </tr>
        	<%
        }
        %>
            
        </tbody>
    </table>

    


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
