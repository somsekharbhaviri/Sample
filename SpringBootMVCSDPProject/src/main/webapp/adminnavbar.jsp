<!DOCTYPE html>
<html>
<head>
    <title>Spring Boot</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<style>
 body {
            background-color: #f5f5f5;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            color: #333;
        }

        h1 {
            text-align: center;
            font-size: 32px;
            color: #333;
            margin-top: 20px;
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
            width: 90%;
            max-width: 900px; /* Added max-width for better responsiveness */
            margin: 40px auto;
            padding: 25px;
            background-color: #2c3e50; /* Changed to fit the color scheme */
            border-radius: 10px;
            border: 1px solid #34495e; /* Changed border color */
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 16px rgba(0, 0, 0, 0.1);
        }

        .card h2 {
            text-align: center;
            font-size: 24px;
            color: #ecf0f1; /* Header color */
            margin-bottom: 20px;
        }

        .card table {
            width: 100%;
            border-spacing: 15px;
            color: #ecf0f1; /* Table text color */
        }

        .card th, .card td {
            color: #ecf0f1; /* Table header and data color */
            text-align: center; /* Center align text */
            transition: background-color 0.3s ease; /* Smooth transition for background */
        }

        .card th {
            background-color: #34495e; /* Header background color */
            font-weight: bold;
        }

        .card td {
            background-color: #2c3e50; /* Data background color */
        }

        /* Hover effect for table rows */
        .card tr:hover td {
            background-color: #34495e; /* Change background color on row hover */
            color: #f39c12; /* Change text color on row hover */
        }

        .card td a {
            color: #f39c12; /* Delete link color */
            text-decoration: none;
        }

        .card td a:hover {
            text-decoration: underline; /* Underline on hover */
        }

        @media screen and (max-width: 768px) {
            .card {
                width: 90%;
            }

            .navbar a {
                font-size: 16px;
            }
        }
</style>
<body>
    <h2 align="center">Spring Boot MVC SDP Project</h2>
    <div class="navbar">
        <a href="adminhome">admin home</a>
        <a href="viewallemps">View All Employees</a>
        <a href="deleteemp">delete Employee</a>
        <a href="updateemp">Update Employee Status</a>
        <a href="addcustomer">Add Customer</a>
        <a href="adminlogout">admin logout</a>
    </div>
</body>
</html>