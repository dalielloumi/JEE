
<!DOCTYPE html>
<html>
<head>
    <title>Add groupe</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 600px;
            margin: 50px auto;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            color: #333333;
        }
        label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
        }
        input[type="text"], input[type="number"], input[type="submit"],select {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #cccccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #007bff;
            color: #ffffff;
            border: none;
            border-radius: 5px;
            padding: 10px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
    <h2>Add a Group</h2>
    <form action="AddGroupesServlet" method="post">
        <label for="level">Level:</label>
        <select id="level" name="level" required>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
        </select>

        <label for="speciality">Specialty:</label>
        <select id="speciality" name="speciality" required>
            <option value="Computer Science">Computer Science</option>
            <option value="Mechanical Engineering">Mechanical Engineering</option>
            <option value="Civil Engineering">Civil Engineering</option>
            <option value="Industrial Engineering">Industrial Engineering</option>
        </select>

        <label for="group_number">Group Number:</label>
        <select id="group_number" name="group_number" required>
            <option value="1">1</option>
            <option value="2">2</option>
        </select>

        <label for="num_students">Number of Students:</label>
        <input type="number" id="num_students" name="num_students" required>

        <input type="submit" value="Submit">
    </form>
</div>

</body>
</html>