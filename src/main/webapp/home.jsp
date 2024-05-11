<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Management</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
    }
    h1, h2 {
        text-align: center;
    }
    form {
        margin: 20px auto;
        width: 60%;
        background-color: #fff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }
    label {
        display: block;
        margin-bottom: 10px;
    }
    input[type="text"],
    input[type="password"],
    select {
        width: calc(100% - 20px);
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 3px;
    }
    button[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
    button[type="submit"]:hover {
        background-color: #45a049;
    }
    table {
        border-collapse: collapse;
        width: 80%;
        margin: 20px auto;
    }
    th, td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: left;
    }
    th {
        background-color: #f2f2f2;
    }
    tr:nth-child(even) {
        background-color: #f2f2f2;
    }
    .button {
        background-color: #4CAF50; /* Green */
        border: none;
        color: white;
        padding: 10px 20px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 4px 2px;
        cursor: pointer;
        border-radius: 4px;
    }
    .button:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
    <h1>User Management</h1>
    <h2>Create User</h2>
      <div class="container">
        <center><h2>Admin</h2>
      <a href="addUser.jsp"><button type="submit" class="button">Add User</button></a>
      <a href="addmatiere.jsp"><button type="submit" class="button">Add Matiere</button></a>
      <a href="addgroupe.jsp"><button type="submit" class="button">Add Groupe</button></a>     
      </center>
    </div>
    

    <hr>
   <h1>User Management</h1>
    <table border="1">
        <thead>
            <tr>
                <th>Username</th>
                <th>Password</th>
                <th>Type</th>
                <th>Activated</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="user" items="${requestScope.userList}">
                <tr>
                    <td>${user.nom}</td>
                    <td>${user.password}</td>
                    <td>${user.type}</td>
                    <td>${user.activated()}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>

