<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>
<style type="text/css">
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
    form input[type="tel"],
    form input[type="text"],
    form input[type="email"],
    form input[type="password"],
    form input[type="date"],
    form select {
        width: 200px;
        padding: 6px;
        border: 1px solid;
        border-radius: 4px;
        box-sizing: border-box;
    }
    form input[type="submit"] {
        grid-column: span 2;
        background-color: green;
        color: white;
        padding: 8px 16px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        margin-top: 10px;
    }
    .login-a{
        grid-column: span 2;
        text-decoration: none;
        text-align: center;
        margin-top: 10px;
    }
    .login-a a {
        text-decoration: none;
        color: blue;
    }
    .failure{
    color:red;
    }
</style>
</head>
<body>
    <h1>Pentagon Space</h1>
    <h2>Student Registration</h2>
    <%if(request.getAttribute("error")!=null){ %>
    <h3 class="failure"><%=request.getAttribute("error") %><h3></h3>
    <%}%>
    <form action="register" method="post">
        <label>Enter the Name:</label>
        <input type="text" name="name">
        <label>Enter the Phone:</label>
        <input type="tel" name="phone">
        <label>Enter the E-mail:</label>
        <input type="email" name="mail">
        <label>Enter the Branch:</label>
        <select name="branch" required>
            <option value=" ">--Select the Branch--</option>
            <option value="cse">CSE</option>
            <option value="ise">ISE</option>
            <option value="ece">ECE</option>
            <option value="civil">CIVIL</option>
            <option value="mech">MECH</option>
            <option value="eee">EEE</option>
        </select>
        <label>Enter the Location:</label>
        <input type="text" name="loc">
        <label>Enter the Password:</label>
        <input type="password" name="password">
        <label>Enter the Confirm Password:</label>
        <input type="password" name="confirm">
        <input type="submit" value="Create account">
        <div class="login-a">
        Already have an account?<a href="login.jsp"> Login</a>
        </div>
    </form>
</body>
</html>
    