<%@page import="com.klef.jfsd.springboot.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <title>Update Employee</title>
</head>
<style>
body {
        background-color: #1c1c1e;
        font-family: 'Roboto', sans-serif;
        margin: 0;
        padding: 0;
        color: #f7f7f7;
    }

    h3 {
        text-align: center;
        font-size: 36px;
        color: #f7bc08;
        margin-top: 20px;
    }

    .navbar {
        text-align: center;
        padding: 15px 0;
        background-color: #28282b;
        border-bottom: 2px solid #3a3a3c;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.3);
    }

    .navbar a {
        margin: 0 10px;
        color: #f7bc08;
        text-decoration: none;
        font-weight: 500;
        font-size: 18px;
        padding: 10px 15px;
        transition: background 0.3s ease-in, color 0.3s ease-in;
    }

    .navbar a:hover {
        background-color: #f7bc08;
        color: #1c1c1e;
    }

    .form-container {
        width: 80%;
        max-width: 800px;
        margin: 40px auto;
        padding: 30px;
        background-color: #28282b;
        border-radius: 15px;
        border: 1px solid #3a3a3c;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
        transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .form-container:hover {
        transform: translateY(-10px);
        box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
    }

    .form-container h2 {
        text-align: center;
        font-size: 28px;
        color: #f7bc08;
        margin-bottom: 25px;
    }

    .form-container table {
        width: 100%;
        color: #f7f7f7;
        border-spacing: 15px;
    }

    .form-container th, .form-container td {
        text-align: left;
        padding: 10px;
    }

    label {
        font-weight: 500;
        color: #f7bc08;
    }
     .radio-group {
            display: flex;
            align-items: center;
        }

        .radio-group input[type="radio"] {
            display: none;
        }

        .radio-group label {
            position: relative;
            padding-left: 30px;
            margin-right: 20px;
            cursor: pointer;
            color: #555;
        }

        .radio-group label::before {
            content: '';
            position: absolute;
            left: 0;
            top: 50%;
            transform: translateY(-50%);
            width: 18px;
            height: 18px;
            border: 2px solid #ccd6e0;
            border-radius: 50%;
            background: #fff;
        }

        .radio-group input[type="radio"]:checked + label::before {
            border-color: #1a3e59;
            background: radial-gradient(circle at center, #f7bc08 0%, #f7bc08 50%, transparent 50%, transparent 100%);
        }

    input[type="text"],
    input[type="email"],
    input[type="password"],
    input[type="number"],
    input[type="date"],
    select {
        width: 100%;
        padding: 12px;
        margin: 8px 0;
        box-sizing: border-box;
        background-color: #3a3a3c;
        border: 2px solid #4a4a4e;
        border-radius: 8px;
        color: #f7f7f7;
        font-size: 16px;
        transition: border 0.3s ease, background-color 0.3s ease;
    }

    input[type="text"]:focus,
    input[type="email"]:focus,
    input[type="password"]:focus,
    input[type="number"]:focus,
    input[type="date"]:focus,
    select:focus {
        background-color: #444446;
        border-color: #f7bc08;
    }

   
    input[type="submit"],
    input[type="reset"] {
        margin-right: 10px;
    }

    .button-container {
        text-align: center;
        margin-top: 30px;
    }

    input[type="submit"],
    input[type="reset"] {
        padding: 12px 25px;
        border: none;
        border-radius: 5px;
        background-color: #f7bc08;
        color: #1c1c1e;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s ease, transform 0.2s ease;
    }

    input[type="submit"]:hover,
    input[type="reset"]:hover {
        background-color: #e6a606;
        transform: scale(1.05);
    }

    input[type="submit"]:active,
    input[type="reset"]:active {
        transform: scale(0.98);
    }

    @media screen and (max-width: 768px) {
        .form-container {
            width: 95%;
        }

        .navbar a {
            font-size: 16px;
        }

        h3 {
            font-size: 28px;
        }
    }</style>
<body>
  <%@include file="employeenavbar.jsp" %>
  
    <h3 style="text-align: center;"><u>Update Employee Profile</u></h3>
    <div class="form-container">
        <form method="post" action="updateemployee">
            <table>
            <tr>
                    <td><label for="eid">ID</label></td>
                    <td><input type="text" id="eid" name="eid" readonly value="<%= emp.getId() %>" required/></td>
                </tr>
               <tr>
                    <td><label for="ename">Enter Name</label></td>
                    <td><input type="text" id="ename" name="ename" value="<%= emp.getName() %>" required/></td>
                </tr>
                <tr>
                    <td><label>Select Gender</label></td>
                    <td>
                        <input type="radio" id="male" name="egender" value="MALE" <%= emp.getGender().equals("MALE") ? "checked" : "" %> required/>
                        <label for="male">Male</label>
                        <input type="radio" id="female" name="egender" value="FEMALE" <%= emp.getGender().equals("FEMALE") ? "checked" : "" %> required/>
                        <label for="female">Female</label>
                        <input type="radio" id="others" name="egender" value="OTHERS" <%= emp.getGender().equals("OTHERS") ? "checked" : "" %> required/>
                        <label for="others">Others</label>
                    </td>
                </tr>
                <tr>
                    <td><label for="edob">Enter Date of Birth</label></td>
                    <td><input type="date" id="edob" name="edob" value="<%= emp.getDateofbirth() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="edept">Select Department</label></td>
                    <td>
                        <select id="edept" name="edept" required>
                            <option value="">---Select---</option>
                            <option value="TECHNICAL" <%= emp.getDepartment().equals("TECHNICAL") ? "selected" : "" %>>Technical</option>
                            <option value="MARKETING" <%= emp.getDepartment().equals("MARKETING") ? "selected" : "" %>>Marketing</option>
                            <option value="SALES" <%= emp.getDepartment().equals("SALES") ? "selected" : "" %>>Sales</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="esalary">Enter Salary</label></td>
                    <td><input type="number" id="esalary" name="esalary" step="0.01" value="<%= emp.getSalary() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="elocation">Enter Location</label></td>
                    <td><input type="text" id="elocation" name="elocation" value="<%= emp.getLocation() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="eemail">Enter Email ID</label></td>
                    <td><input type="email" id="eemail" name="eemail" value="<%= emp.getEmail() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="epwd">Enter Password</label></td>
                    <td><input type="password" id="epwd" name="epwd" readonly value="<%= emp.getPassword() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="econtact">Enter Contact</label></td>
                    <td><input type="number" id="econtact" name="econtact" value="<%= emp.getContact() %>" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Update"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
