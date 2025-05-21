<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <style>
        body {
            background-color: #eaf6f6; /* Light teal background */
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            color: #2c3e50;
        }

        h1 {
            text-align: center;
            font-size: 32px;
            color: #34495e; /* Darker blue-gray */
            margin-top: 20px;
        }

        .navbar {
            text-align: center;
            padding: 15px 0;
            background-color: #00796b; /* Teal color */
            border-bottom: 2px solid #004d40; /* Darker teal */
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .navbar a {
            margin: 0 10px;
            color: #ffffff; /* White text */
            text-decoration: none;
            font-weight: 500;
            font-size: 18px;
            transition: color 0.2s ease-in, background-color 0.3s;
            padding: 8px 12px;
            border-radius: 5px;
        }

        .navbar a:hover {
            color: #00796b;
            background-color: #ff7043; /* Coral hover background */
        }

        .card {
            width: 90%;
            max-width: 900px;
            margin: 40px auto;
            padding: 25px;
            background-color: #00796b; /* Teal card background */
            border-radius: 10px;
            border: 1px solid #004d40; /* Darker teal border */
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 16px rgba(0, 0, 0, 0.2);
        }

        .card h2 {
            text-align: center;
            font-size: 24px;
            color: #ffffff; /* White text for header */
            margin-bottom: 20px;
        }

        .card table {
            width: 100%;
            border-spacing: 15px;
            color: #ffffff; /* Table text in white */
        }

        .card th, .card td {
            text-align: center;
            transition: background-color 0.3s ease;
            padding: 10px;
            border-radius: 5px;
        }

        .card th {
            background-color: #004d40; /* Darker teal for table headers */
            font-weight: bold;
            color: #ffccbc; /* Light coral text */
        }

        .card td {
            background-color: #00796b; /* Teal for table rows */
        }

        .card tr:hover td {
            background-color: #004d40; /* Darker teal on hover */
            color: #ffccbc; /* Light coral text on hover */
        }

        .card td a {
            color: #ff7043; /* Coral color for links */
            text-decoration: none;
        }

        .card td a:hover {
            text-decoration: underline;
        }

        @media screen and (max-width: 768px) {
            .card {
                width: 100%;
            }

            .navbar a {
                font-size: 16px;
            }
        }
    </style>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>
    <h1>Welcome to Our System</h1>
    <div class="card">
        <h2>System Architecture</h2>
        <table>
            <tr>
                <th>Layer</th>
                <th>Description</th>
            </tr>
            <tr>
                <td>Controller Layer</td>
                <td>Will access the Service Layer</td>
            </tr>
            <tr>
                <td>Service Layer</td>
                <td>Will access the Repository Layer</td>
            </tr>
            <tr>
                <td>Repository Layer</td>
                <td>Contains Database Logic</td>
            </tr>
        </table>
    </div>
</body>
</html>
