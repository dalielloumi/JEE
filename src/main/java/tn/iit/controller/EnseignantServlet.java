import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class EnseignantServlet extends HttpServlet {

    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/examjee";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Récupération des données envoyées par le formulaire JSP
        String listeGroupe = request.getParameter("listeGroupe");
        String listeMatiere = request.getParameter("listeMatiere");
        String dateRecuperation = request.getParameter("dateRecuperation");
        Part documentAttaché = request.getPart("documentAttaché");
        
        // Récupération du nom du fichier
        String documentFileName = getFileName(documentAttaché);

        // Ajout des données dans la base de données
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
            String query = "INSERT INTO enseignant (liste_groupe, liste_matiere, date_recuperation, document_attache_nom) VALUES (?, ?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, listeGroupe);
            preparedStatement.setString(2, listeMatiere);
            preparedStatement.setString(3, dateRecuperation);
            preparedStatement.setString(4, documentFileName);

            preparedStatement.executeUpdate();
            preparedStatement.close();
            connection.close();
            // Si tout se passe bien, rediriger vers une page de succès
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace(); // Gérer l'exception correctement
            // En cas d'erreur, rediriger vers une page d'erreur
            response.sendRedirect("error.jsp");
        }
    }

    // Méthode utilitaire pour obtenir le nom du fichier à partir de la partie (Part) de la requête
    private String getFileName(Part part) {
        String contentDisposition = part.getHeader("content-disposition");
        String[] tokens = contentDisposition.split(";");
        for (String token : tokens) {
            if (token.trim().startsWith("filename")) {
                return token.substring(token.indexOf('=') + 1).trim().replace("\"", "");
            }
        }
        return "";
    }
}