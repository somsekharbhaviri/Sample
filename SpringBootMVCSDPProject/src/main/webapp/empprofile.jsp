<%@page import="com.klef.jfsd.springboot.model.Employee"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%
Employee emp= (Employee) session.getAttribute("emp");
if(emp==null){
	response.sendRedirect("empsessionexpiry");
	return;
}

%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Profile</title>
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

        /* Profile Card */
        .profile-card {
            width: 100%;
            max-width: 400px;
            background-color: #ffffff;
            margin: 50px auto;
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            position: relative;
            transition: transform 0.3s ease;
        }

        .profile-card:hover {
            transform: translateY(-10px);
        }

        .profile-header {
            background-color: #0044cc;
            color: #ffffff;
            padding: 15px;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
            text-align: center;
            font-size: 20px;
            font-weight: bold;
        }

        .profile-content {
            padding: 20px;
            color: #333;
        }

        .profile-row {
            display: flex;
            justify-content: space-between;
            margin: 10px 0;
            font-size: 16px;
        }

        .profile-row label {
            font-weight: bold;
            color: #444;
        }

        .profile-row span {
            color: #666;
        }

        /* Styling buttons */
        .profile-actions {
            text-align: center;
            margin-top: 20px;
        }

        .profile-actions button {
            background-color: #0044cc;
            color: #fff;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .profile-actions button:hover {
            background-color: #002f99;
        }

        /* Responsive for mobile */
        @media (max-width: 768px) {
            .profile-card {
                width: 90%;
                padding: 15px;
            }

            .profile-header {
                font-size: 18px;
            }

            .profile-row {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>

<%@include file="employeenavbar.jsp" %>
<h3 style="text-align: center;">Employee Profile</h3>

<div class="profile-card">
    <div class="profile-header">
        <c:out value="${emp.name}"/>
    </div>
    <div class="profile-content">
        <div class="profile-row">
            <label>ID:</label>
            <span><c:out value="${emp.id}"/></span>
        </div>
        <div class="profile-row">
            <label>Gender:</label>
            <span><c:out value="${emp.gender}"/></span>
        </div>
        <div class="profile-row">
            <label>Date of Birth:</label>
            <span><c:out value="${emp.dateofbirth}"/></span>
        </div>
        <div class="profile-row">
            <label>Department:</label>
            <span><c:out value="${emp.department}"/></span>
        </div>
        <div class="profile-row">
            <label>Salary:</label>
            <span><c:out value="${emp.salary}"/></span>
        </div>
        <div class="profile-row">
            <label>Location:</label>
            <span><c:out value="${emp.location}"/></span>
        </div>
        <div class="profile-row">
            <label>Email:</label>
            <span><c:out value="${emp.email}"/></span>
        </div>
        <div class="profile-row">
            <label>Contact:</label>
            <span><c:out value="${emp.contact}"/></span>
        </div>
        <div class="profile-row">
            <label>Status:</label>
            <span><c:out value="${emp.status}"/></span>
        </div>
    </div>

    <div class="profile-actions">
        <button>Edit Profile</button>
    </div>
</div>

</body>
</html>
