<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Locale" %>

<%
// Créer un objet SimpleDateFormat avec le format désiré
SimpleDateFormat sdf = new SimpleDateFormat("EEEE d MMMM yyyy", new Locale("fr", "FR"));

// Obtenir la date actuelle
java.util.Date date = new java.util.Date();

// Formater la date selon le format défini
String dateFormatee = sdf.format(date);
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Interface Tirage</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1, h2 {
            text-align: center;
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #f2f2f2;
        }
        td a {
            text-decoration: none;
            color: #007bff;
        }
        button {
            padding: 8px 12px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        button.print {
            background-color: #28a745;
            color: #fff;
        }
        button.delete {
            background-color: #dc3545;
            color: #fff;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Interface Tirage</h1>
		<I> le <%= dateFormatee %> </I>
        <br>
        <h2>Liste des tâches</h2>
        <table>
            <tr>
                <th>Enseignant</th>
                <th>Nbre de pages</th>
                <th>Document</th>
                <th>État</th>
            </tr>
            <tr>
                <td>Mr Flen Fouleni</td>
                <td> 23 </td>
                <td><a href="telechargerDocument.jsp?document=nomDuDocument.pdf">Télécharger</a></td>
                <td>
                    <button class="print" onclick="window.print()">Imprimer</button>
                    <button class="delete" onclick="supprimerDocument()">Supprimer</button>
                </td>
            </tr>
            <!-- Ajoutez plus de lignes ici selon vos besoins -->
        </table>
    </div>

    <script>
        function supprimerDocument() {
            // Mettez ici le code pour supprimer le document
            alert("Document supprimé avec succès !");
        }
    </script>
</body>
</html>