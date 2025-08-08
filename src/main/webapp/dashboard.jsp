<%@page import="in.pentagon.studentapp.dto.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Dashboard</title>
  <style>
    header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      background-color: black;
      color: whitesmoke;
      padding: 10px 20px;
    }
    header .nav-left span {
      font-weight: bold;
    }

    header .nav-right a {
      color: whitesmoke;
      margin-left: 15px;
      text-decoration: none;
    }
    .logout {
      margin-left: 15px;
      padding: 5px 10px;
      background-color: red;
      border: none;
      color: whitesmoke;
      cursor: pointer;
      border-radius: 3px;
    }
    main {
      padding: 20px;
      text-align: justify;
    }

    h1 {
      margin-bottom: 20px;
    }

    .view-data {
      max-width: 800px;
      border: none;
      padding: 0px;
      border-radius: 5px;
      text-align: left;
    }

    .search-bar {
      margin-bottom: 20px;
    }

    .search-bar input[type="text"] {
      padding: 8px;
      width: 60%;
      max-width: 300px;
      border: 1px solid black;
      border-radius: 3px;
    }

    .search-bar button {
      padding: 8px 12px;
      margin-left: 5px;
      border: none;
      background-color: skyblue;
      color: whitesmoke;
      cursor: pointer;
      border-radius: 3px;
    }

    table {
      width: 100%;
      border-collapse: collapse;
    }

    table th, table td {
      padding: 10px;
    }
    .login {
        color: green;
        font-size: 14px;
        margin-bottom: 10px;
        text-align: center;
    }
  </style>
</head>
<body>
  <%if(session.getAttribute("student")!=null) {%>
  <%Student s=(Student)session.getAttribute("student"); %>

  <header>
    <div class="nav-left">
      <h3>Welcome <%= s.getName() %></h3>
    </div>
    <div class="nav-right">
      <a href="#">View User</a>
      <a href="update.jsp">Update Data</a>
      <a href="forgot.jsp">Reset Password</a>
      <a class="back-btn" href="login.jsp">Logout</a>
    </div>
  </header>
  <main>
  <% if(request.getAttribute("login")!=null) { %>
        <h3 class="login"><%=request.getAttribute("login") %></h3>
    <% } %>
    <h1>Dashboard</h1>

    <section class="view-data">
      <h2>View Your Data</h2>
      <table>
        <tr>
          <th>Id</th>
          <th>Name</th>
          <th>Phone</th>
          <th>Mail ID</th>
          <th>Branch</th>
          <th>Location</th>
        </tr>
        <tr>
          <td><%=s.getId() %></td>
          <td><%=s.getName() %></td>
          <td><%=s.getPhone() %></td>
          <td><%=s.getMail() %></td>
          <td><%=s.getBranch() %></td>
          <td><%=s.getLoc() %></td>
          
        </tr>
      </table>
    </section>

    <section class="search-bar">
      <h2>Search User</h2>
      <input type="text" placeholder="Enter Student Name">
      <button>Search</button>
    </section>

    <section class="view-data">
      <table>
        <tr>
          <th>Name</th>
          <th>Phone</th>
          <th>Mail ID</th>
          <th>Branch</th>
          <th>Location</th>
        </tr>
        <tr>
          
        </tr>
      </table>
    </section>
  </main>
  <%} else {
  request.setAttribute("err", "Session expired!");  
  RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
  rd.forward(request, response);
  } %>
</body>
</html>