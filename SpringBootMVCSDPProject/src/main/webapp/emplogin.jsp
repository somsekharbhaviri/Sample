<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #d7e1ec, #f4f4f9);
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            color: #333;
        }

        h3 {
            font-size: 2rem;
            color: #333;
            margin-bottom: 20px;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.1);
        }

        .form-container {
            background-color: #ffffff;
            border-radius: 12px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.1);
            padding: 30px;
            max-width: 400px;
            width: 90%;
            transition: transform 0.3s ease;
        }

        .form-container:hover {
            transform: translateY(-5px);
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        label {
            font-size: 1rem;
            color: #555;
            margin-bottom: 5px;
        }

        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 12px;
            border-radius: 8px;
            border: 1px solid #ccc;
            transition: border 0.3s ease, box-shadow 0.3s ease;
            font-size: 1rem;
        }

        input[type="email"]:focus,
        input[type="password"]:focus {
            border: 1px solid #007bff;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
            outline: none;
        }

        .button-container {
            text-align: center;
        }

        input[type="submit"],
        input[type="reset"] {
            background-color: #007bff;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 8px;
            font-size: 1rem;
            cursor: pointer;
            transition: background-color 0.3s ease;
            width: 48%;
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover {
            background-color: #0056b3;
        }

        input[type="reset"] {
            background-color: #6c757d;
        }

        input[type="reset"]:hover {
            background-color: #5a6268;
        }

        .error-message {
            color: red;
            text-align: center;
            margin-bottom: 15px;
        }

        @media (max-width: 600px) {
            .form-container {
                padding: 20px;
            }

            h3 {
                font-size: 1.5rem;
            }
        }
    </style>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>
    <h3>Employee Login</h3>
    <div class="error-message">
        <h5><c:out value="${msg}"></c:out></h5>
    </div>
    <div class="form-container">
        <form method="post" action="checkemployeelogin">
            <label for="eemail">Enter Email ID</label>
            <input type="email" id="eemail" name="eemail" required/>
            
            <label for="epwd">Enter Password</label>
            <input type="password" id="epwd" name="epwd" required/>
            
            <div class="button-container">
                <input type="submit" value="Login"/>
                <input type="reset" value="Clear"/>
            </div>
        </form>
    </div>
</body>
</html>
