<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
</head>
<style>
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f9;
    margin: 0;
    padding: 0;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    height: 100vh;
}

h3 {
    font-size: 1.8rem;
    color: #333;
    margin-bottom: 20px;
}

.form-container {
    background-color: white;
    border-radius: 10px;
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
    padding: 30px;
    max-width: 400px;
    width: 100%;
}

form {
    display: flex;
    flex-direction: column;
    gap: 15px;
}

table {
    width: 100%;
}

label {
    font-size: 1rem;
    color: #555;
}

input[type="text"], 
input[type="password"] {
    width: 100%;
    padding: 10px;
    border-radius: 5px;
    border: 1px solid #ccc;
    transition: border 0.3s ease;
}

input[type="text"]:focus, 
input[type="password"]:focus {
    border: 1px solid #007bff;
    outline: none;
}

.button-container {
    text-align: center;
}

input[type="submit"],
input[type="reset"] {
    background-color: #007bff;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    font-size: 1rem;
    cursor: pointer;
    transition: background-color 0.3s ease;
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

@media (max-width: 600px) {
    .form-container {
        padding: 20px;
    }

    h3 {
        font-size: 1.5rem;
    }
}

</style>
<body>
  <%@include file="mainnavbar.jsp" %>
    <h3 style="text-align: center;">Admin Login</h3>
    <div class="form-container">
        <form method="post" action="checkadminlogin">
            <table>
                <tr>
                    <td><label for="auname">Enter Username</label></td>
                    <td><input type="text" id="auname" name="auname" required/></td>
                </tr>
                 <tr>
                    <td><label for="apwd">Enter Password</label></td>
                    <td><input type="password" id="apwd" name="apwd" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Login"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
