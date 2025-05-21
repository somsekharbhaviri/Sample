<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Employees</title>
    <style>
        body {
            background-color: #f5f5f5;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            color: #333;
        }


        .navbar {
            text-align: center;
            padding: 15px 0;
            background-color: #2c3e50;
            border-bottom: 2px solid #34495e;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .navbar a {
            margin: 0 10px;
            color: #ecf0f1;
            text-decoration: none;
            font-weight: 500;
            font-size: 18px;
            transition: color 0.2s ease-in;
            padding: 8px 12px;
        }

        .navbar a:hover {
            color: #f39c12;
        }

        .card {
            width: 100%;
            max-width: 1000px;
            margin: 40px auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 10px;
            border: 1px solid #ddd;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        th, td {
            padding: 12px 15px;
            text-align: left;
            border: 1px solid #ddd;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        th {
            background-color: #2c3e50;
            color: #fff;
            text-transform: uppercase;
            font-weight: bold;
        }

        td {
            background-color: black;
        }

       

        
        /* Responsive styling for mobile view */
        @media screen and (max-width: 768px) {
            table {
                border: 0;
            }

            table thead {
                display: none;
            }

            table tr {
                display: block;
                margin-bottom: 20px;
            }

            table td {
                display: block;
                text-align: right;
                padding-left: 50%;
                position: relative;
                border: none;
                border-bottom: 1px solid #ddd;
            }

            table td::before {
                content: attr(data-label);
                position: absolute;
                left: 0;
                width: 50%;
                padding-left: 15px;
                font-weight: bold;
                text-align: left;
                background-color: #f1f1f1;
            }

            table td:last-child {
                border-bottom: 0;
            }
        }

    </style>
</head>
<body>

<%@include file="adminnavbar.jsp" %>
<h3 style="text-align: center;">Admin Home</h3>

<div class="card">
    <h1>Welcome </h1>
    <h1 align="center"><c:out value="${admin.username}"></c:out></h1>
    
    
    <h1 align="center">Total Employees :<c:out value="${count}"></c:out></h1>
    
</div>

</body>
</html>
