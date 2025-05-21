<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View All Employees</title>
    <style>
                body {
            background-color: #f0f4f8;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: #333;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 95%;
            max-width: 1200px;
            margin: 40px auto;
            padding: 20px;
        }

        h3 {
            text-align: center;
            font-size: 30px;
            color: #002366; /* Dark blue heading */
            margin-bottom: 20px;
            font-weight: 600;
            letter-spacing: 1.5px;
            text-transform: uppercase;
        }

        .card {
            padding: 20px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            overflow-x: auto; /* Allows horizontal scrolling only when needed */
        }

        table {
            width: 100%;
            border-collapse: collapse;
            table-layout: auto; /* Auto layout to adjust column sizes automatically */
        }

        th, td {
            padding: 16px 20px;
            text-align: left;
            border: 1px solid #ddd; /* Subtle borders */
        }

        th {
            background-color: #002366; /* Dark blue for header */
            color: #f7bc08; /* Gold text */
            text-transform: uppercase;
            font-weight: bold;
            letter-spacing: 1px;
            font-size: 16px;
        }

        td {
            color: #002366; /* Dark blue text */
            background-color: #f9f9f9; /* Light background for rows */
        }

     

       

        td {
            word-wrap: break-word; /* Wraps long content */
            max-width: 150px; /* Prevents columns from stretching too wide */
        }

        @media (max-width: 768px) {
            table, thead, tbody, th, td, tr {
                display: block;
            }

            tr {
                margin-bottom: 15px;
                border: 1px solid #ddd;
            }

            th {
                display: none;
            }

            td {
                display: block;
                text-align: right;
                padding-left: 50%;
                position: relative;
                border: none;
                border-bottom: 1px solid #ddd;
            }

            td::before {
                content: attr(data-label);
                position: absolute;
                left: 10px;
                top: 15px;
                font-weight: bold;
                text-align: left;
                color: #002366;
            }

            td:last-child {
                border-bottom: 0;
            }
        }

    </style>
</head>
<body>

<%@include file="adminnavbar.jsp" %>

    <h3><u>View All Employees</u></h3>
    <h1 align="center">Total Employees :<c:out value="${count}"></c:out></h1>

 
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Gender</th>
                    <th>Date of Birth</th>
                    <th>Department</th>
                    <th>Salary</th>
                    <th>Location</th>
                    <th>Email</th>
                    <th>Contact</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${emplist}" var="emp">
                    <tr>
                        <td data-label="ID"><c:out value="${emp.id}"/></td>
                        <td data-label="Name"><c:out value="${emp.name}"/></td>
                        <td data-label="Gender"><c:out value="${emp.gender}"/></td>
                        <td data-label="Date of Birth"><c:out value="${emp.dateofbirth}"/></td>
                        <td data-label="Department"><c:out value="${emp.department}"/></td>
                        <td data-label="Salary"><c:out value="${emp.salary}"/></td>
                        <td data-label="Location"><c:out value="${emp.location}"/></td>
                        <td data-label="Email"><c:out value="${emp.email}"/></td>
                        <td data-label="Contact"><c:out value="${emp.contact}"/></td>
                        <td data-label="Status"><c:out value="${emp.status}"/></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
   


</body>
</html>
