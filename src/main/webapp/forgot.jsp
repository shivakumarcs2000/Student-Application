<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reset Password</title>
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
        color: Purple;
        margin-top: 40px;
        margin-bottom: 10px;
    }
    h2 {
        color: rgb(115, 115, 255);
        margin-bottom: 30px;
    }
    form {
        padding: 25px 30px;
        border: 1px solid ;
        border-radius: 10px;
        box-shadow: 2px 2px 10px black;
        display: flex;
        flex-direction: column;
        width: 300px;
    }
    label {
        margin-bottom: 5px;
        text-align: left;
        width: 100%;
    }
    input[type="tel"],
    input[type="email"],
    input[type="password"] {
        width: 100%;
        padding: 6px;
        margin-bottom: 15px;
        border: 1px solid ;
        border-radius: 4px;
        box-sizing: border-box;
    }
    .button-group {
        display: flex;
        justify-content: space-between;
    }
    .reset-btn {
        background-color: green;
        color: white;
        padding: 8px 16px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
    .back-btn {
        background-color: blue;
        color: white;
        padding: 8px 16px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        text-decoration: none;
        text-align: center;
    }
    .failure {
        color: red;
    }
</style>
</head>
<body>
    <h1>Pentagon Space</h1>
    <h2>Reset your password here</h2>
    <% if(request.getAttribute("error")!=null){ %>
    <h3 class="failure"><%=request.getAttribute("error") %></h3>
    <% } %>
    <form action="reset" method="post">
        <label>Enter the Phone number:</label>
        <input type="tel" name="phone">
        <label>Enter the Mail ID:</label>
        <input type="email" name="mail">
        <label>Enter the password:</label>
        <input type="password" name="password">
        <label>Confirm the password:</label>
        <input type="password" name="confirmPassword">
        <div class="button-group">
            <input class="reset-btn" type="submit" value="Reset Password">
            <a class="back-btn" href="login.jsp">Back</a>
        </div>
    </form>
</body>
</html>
    