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
    <form action="createUser" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required><br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br>
        <label for="type">Type:</label>
        <select id="type" name="type">
        <option value="admin">Administrator</option>
            <option value="teacher">Teacher</option>
            
            <option value="print">Drawing agent</option>
        </select><br>
        <button type="submit" class="button">Create User</button>
    </form>
    <hr>
    <h2>Manage Users</h2>
    <table>
        <tr>
            <th>Username</th>
            <th>Type</th>
            <th>Status</th>
            <th>Action</th>
        </tr>
        <tr>
            <td>User1</td>
            <td>Regular</td>
            <td>Active</td>
            <td>
                <form action="activateUser" method="post">
                    <input type="hidden" name="username" value="User1">
                    <button type="submit" class="button">Activate</button>
                </form>
                <form action="deactivateUser" method="post">
                    <input type="hidden" name="username" value="User1">
                    <button type="submit" class="button">Deactivate</button>
                </form>
            </td>
        </tr>
        <tr>
            <td>User2</td>
            <td>Administrator</td>
            <td>Inactive</td>
            <td>
                <form action="activateUser" method="post">
                    <input type="hidden" name="username" value="User2">
                    <button type="submit" class="button">Activate</button>
                </form>
                <form action="deactivateUser" method="post">
                    <input type="hidden" name="username" value="User2">
                    <button type="submit" class="button">Deactivate</button>
                </form>
            </td>
        </tr>
        <!-- Add rows for other users as needed -->
    </table>
</body>
</html>
