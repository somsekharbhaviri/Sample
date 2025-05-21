<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Employee Status</title>
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
            max-width: 150px; 
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
    <h3 style="text-align: center;"><u>Update Employee Status</u></h3>
    <table>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>GENDER</th>
            <th>DATE OF BIRTH</th>
            <th>DEPARTMENT</th>
            <th>SALARY</th>
            <th>LOCATION</th>
            <th>EMAIL</th>
            <th>CONTACT</th>
            <th>STATUS</th>
            <th>ACTION</th>
        </tr>
        <c:forEach items="${emplist}" var="emp">
            <tr>
                <td><c:out value="${emp.id}"/></td>
                <td><c:out value="${emp.name}"/></td>
                <td><c:out value="${emp.gender}"/></td>
                <td><c:out value="${emp.dateofbirth}"/></td>
                <td><c:out value="${emp.department}"/></td>
                <td><c:out value="${emp.salary}"/></td>
                <td><c:out value="${emp.location}"/></td>
                <td><c:out value="${emp.email}"/></td>
                <td><c:out value="${emp.contact}"/></td>
                <td><c:out value="${emp.status}"/></td>
           
           <td>
       
       <a href='<c:url value="updateempstatus?id=${emp.id}&status=Accepted"></c:url>'>Accept</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <a href='<c:url value="updateempstatus?id=${emp.id}&status=Rejected"></c:url>'>Reject</a>
         
           </td>

            </tr>
        </c:forEach>
    </table>
</body>
</html>
