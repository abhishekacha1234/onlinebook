<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Add Book Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f4f4f9;
            font-family: 'Arial', sans-serif;
        }

        .container {
            margin-top: 80px;
            max-width: 700px;
        }

        .card {
            border: none;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            border-radius: 12px;
            background-color: #ffffff;
        }

        .card-body {
            padding: 40px;
        }

        .text-center h3 {
            font-weight: bold;
            margin-bottom: 30px;
            color: #343a40;
        }

        .form-group label {
            font-weight: bold;
            color: #495057;
        }

        .form-control {
            border-radius: 8px;
            padding: 12px;
            font-size: 16px;
            border: 1px solid #ced4da;
        }

        .btn-primary {
            background-color: #007bff;
            border: none;
            padding: 14px;
            font-size: 16px;
            font-weight: bold;
            border-radius: 8px;
            width: 100%;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }

        .alert {
            margin-top: 15px;
        }

        .form-select {
            padding: 10px;
            border-radius: 8px;
        }

        .custom-file-input {
            cursor: pointer;
        }

        .custom-file-label {
            padding: 10px;
        }

        .form-group.mb-3 {
            margin-bottom: 20px;
        }

        @media (max-width: 768px) {
            .card-body {
                padding: 20px;
            }
        }
    </style>
</head>
<body>
    <jsp:include page="navbar.jsp" />
    <c:if test="${empty userobj}">
        <c:redirect url="../login.jsp" />
    </c:if>
    
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="card">
                    <div class="card-body">
                        <c:if test="${not empty succMsg}">
                            <div class="alert alert-success text-center">
                                ${succMsg}
                            </div>
                            <c:remove var="succMsg" />
                        </c:if>
                        
                        <c:if test="${not empty failedMsg}">
                            <div class="alert alert-danger text-center">
                                ${failedMsg}
                            </div>
                            <c:remove var="failedMsg" />
                        </c:if>
                        
                        <h3 class="text-center">Add New Book</h3>
                        
                        <form action="../add_book" method="post" enctype="multipart/form-data">
                            <div class="form-group mb-3">
                                <label for="bookName">Book Name *</label>
                                <input type="text" name="bname" id="bookName" class="form-control" required>
                            </div>
                            
                            <div class="form-group mb-3">
                                <label for="authorName">Author Name *</label>
                                <input type="text" name="author" id="authorName" class="form-control" required>
                            </div>
                            
                            <div class="form-group mb-3">
                                <label for="bookPrice">Book Price *</label>
                                <input type="number" name="price" id="bookPrice" class="form-control" required>
                            </div>
                            
                            <div class="form-group mb-3">
                                <label for="category">Book Category *</label>
                                <select id="category" class="form-select" name="categories" required>
                                    <option selected disabled>--- Select ---</option>
                                    <option value="New">New Book</option>                                      
                                </select>
                            </div>
                            
                            <div class="form-group mb-3">
                                <label for="status">Book Status *</label>
                                <select id="status" class="form-select" name="status" required>
                                    <option selected disabled>--- Select ---</option>
                                    <option value="Active">Active</option>  
                                    <option value="Inactive">Inactive</option>  
                                </select>
                            </div>
                            
                            <div class="form-group mb-4">
                                <label for="bImage">Upload Image *</label>
                                <input type="file" name="bimg" class="form-control custom-file-input" required>
                            </div>
                            
                            <button type="submit" class="btn btn-primary">Add Book</button>
                        </form>
                    </div>
                </div>    
            </div>   
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
