<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style>
    body {
        display: flex;
        flex-direction: column;
        align-items: center;
        margin: 0;
        padding: 0;
        height: 100vh;
    }
    h1 {
        color: purple;
        margin-top: 40px;
        margin-bottom: 10px;
    }
    h2 {
        color: rgb(115, 115, 255);
        margin-bottom: 20px;
    }
    form {
        display: grid;
        grid-template-columns: max-content 200px;
        gap: 10px 10px;
        padding: 20px 30px;
        border: 1px solid;
        border-radius: 10px;
        box-shadow: 2px 2px 10px black;
        align-items: center;
    }
    form label {
        text-align: right;
    }
    form input[type="email"],
    form input[type="password"] {
        width: 200px;
        padding: 6px;
        border: 1px solid;
        border-radius: 4px;
        box-sizing: border-box;
    }
    .button-group {
        grid-column: span 2;
        display: flex;
        justify-content: space-between;
        margin-top: 10px;
    }
    .login-btn {
        background-color: green;
        color: white;
        padding: 6px 14px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        text-decoration: none;
        text-align: center;
    }
    .forgot-link {
        text-decoration: none;
        color: blue;
        align-self: center;
        font-size: 14px;
    }
    .signup-link {
        margin-top: 10px;
        grid-column: span 2;
        text-align: center;
        font-size: 14px;
    }
    .signup-link a {
        text-decoration: none;
        color: blue;
    }
    .success{
    color:green;
    }
    .fail {
        color: red;
    }
</style>
</head>
<body>
    <h1>Pentagon Space</h1>
    <h2>Login</h2>
    <% if(request.getAttribute("success")!=null) { %>
        <h3 class="success"><%=request.getAttribute("success") %></h3>
    <% } %>
    <% if(request.getAttribute("err")!=null){ %>
    <h3 class="fail"><%=request.getAttribute("err") %></h3>
    <% } %>
    <form action="login" method="post">
        <label>Enter your mail ID:</label>
        <input type="email" name="mail">
        <label>Enter the password:</label>
        <input type="password" name="password">
        <div class="button-group">
            <input type="submit" value="Login" class="login-btn">
            <a href="forgot.jsp" class="forgot-link">Forgot password?</a>
        </div>
        <div class="signup-link">
            Don't have an account? <a href="register.jsp">Signup</a>
        </div>
    </form>
</body>
</html>
    