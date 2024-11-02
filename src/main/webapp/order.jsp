<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Order Book</title>
    

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
           width: 80%; /* Maintain your existing width */
    max-width: 1200px; /* Optional: set a maximum width */
    margin-top: 0; /* Remove top margin to center vertically */
    text-align: center; /* Center text inside container */
    padding-right: 50px;
        }

        h3 {
            color: #007bff;
            text-align: center;
            margin-bottom: 20px;
            font-size: 1.8em;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        thead {
            background-color: #007bff;
            color: white;
        }

        th, td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: left;
        }

        th {
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #e9ecef;
        }
    </style>
</head>
<body>

    <div class="container">
        <h3>Your Order</h3>
        <table>
            <thead>
                <tr>
                    <th>Order Id</th>
                    <th>Name</th>
                    <th>Book Name</th>
                    <th>Author</th>
                    <th>Price</th>
                    <th>Payment Type</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                    <td>@mdo</td>
                    <td>@mdo</td>
                </tr>
            </tbody>
        </table>
    </div>

</body>
</html>