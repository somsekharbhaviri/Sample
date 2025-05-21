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
    <title>Contact Us</title>
    <style>
      
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f4f7;
            margin: 0;
            padding: 0;
        }

        h3 {
            color: #1a1a1a;
            font-size: 28px;
            font-weight: bold;
            margin-top: 20px;
            text-shadow: 1px 1px 2px #999;
        }

        .form-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 80vh;
            
        }

        form {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            width: 500px;
            transition: box-shadow 0.3s ease;
        }

        form:hover {
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        }

        table {
            width: 100%;
        }

        label {
            font-size: 16px;
            color: #1a1a1a;
        }

        input[type="text"], input[type="email"], textarea {
            width: 90%;
            padding: 8px 12px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
            transition: border-color 0.3s ease;
        }

        input[type="text"]:focus, input[type="email"]:focus, textarea:focus {
            border-color: #f7bc08;
            outline: none;
            box-shadow: 0 0 5px rgba(247, 188, 8, 0.5);
        }

        textarea {
            height: 100px;
            resize: vertical;
        }

        .button-container {
            text-align: center;
        }

        input[type="submit"], input[type="reset"] {
            background-color: #0044cc;
            color: #fff;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        input[type="submit"]:hover, input[type="reset"]:hover {
            background-color: #002f99;
            transform: scale(1.05);
        }

        input[type="reset"] {
            background-color: #f7bc08;
            color: #1a1a1a;
        }

        input[type="reset"]:hover {
            background-color: #d99c06;
        }
    </style>
</head>
<body>
  <%@include file="employeenavbar.jsp" %>
    <h3 style="text-align: center;"><u>Contact Us</u></h3>
    <div class="form-container">
        <form method="post" action="sendemail">
            <table>
               <tr>
                    <td><label for="name">Name</label></td>
                    <td><input type="text" id="name" name="name" required/></td>
                </tr>
                <tr>
                    <td><label for="email">Email ID</label></td>
                    <td><input type="email" id="email" name="email" required/></td>
                </tr>
                <tr>
                    <td><label for="subject">Subject</label></td>
                    <td><input type="text" id="subject" name="subject" required/></td>
                </tr>
                 <tr>
                    <td><label for="message">Message</label></td>
                    <td><textarea name="message"></textarea></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Send"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
