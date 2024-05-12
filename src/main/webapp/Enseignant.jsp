<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
    }
    #header {
        background-color: #f2f2f2;
        padding: 10px;
        text-align: right;
    }
    form {
        max-width: 400px;
        margin: 20px auto;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    fieldset {
        border: none;
        margin: 0;
        padding: 0;
    }
    legend {
        font-weight: bold;
        margin-bottom: 10px;
    }
    label {
        display: block;
        margin-bottom: 5px;
    }
    select, input[type="date"], input[type="file"], input[type="submit"] {
        width: 100%;
        padding: 8px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }
    input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        border: none;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
<div id="header">Le <%= new java.util.Date() %></div>

<form action="traitement" method="post">
    <fieldset>
        <legend>Enseignant</legend>
        <label for="listeGroupe">Liste groupe:</label>
        <select id="listeGroupe" name="listeGroupe">
            <!-- Option 1 -->
            <option value="groupe1">Groupe 1</option>
            <!-- Option 2 -->
            <option value="groupe2">Groupe 2</option>
            <!-- Ajoutez autant d'options que nécessaire -->
        </select>
        
        <label for="listeMatiere">Liste matière:</label>
        <select id="listeMatiere" name="listeMatiere">
            <!-- Option 1 -->
            <option value="matiere1">Matière 1</option>
            <!-- Option 2 -->
            <option value="matiere2">Matière 2</option>
            <!-- Ajoutez autant d'options que nécessaire -->
        </select>
        
        <label for="dateRecuperation">Date de récupération:</label>
        <input type="date" id="dateRecuperation" name="dateRecuperation">
        
        <label for="documentAttaché">Document attaché:</label>
        <input type="file" id="documentAttaché" name="documentAttaché">
        
        <input type="submit" value="Valider">
    </fieldset>
</form>
</body>
</html>