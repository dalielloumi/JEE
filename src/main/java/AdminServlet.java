import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

public class AdminServlet extends HttpServlet {

    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/jee";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action != null && action.equals("createUser")) {
            String nom = request.getParameter("nom");
            String password = request.getParameter("password");
            String type = request.getParameter("type");
            boolean activated = Boolean.parseBoolean(request.getParameter("activated"));

            User user = new User(nom, password, type, activated);
     
          

            response.sendRedirect("login.jsp");
        } else {
            response.sendRedirect("error.jsp");
        }
    }

    private void createUser(User user) throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        try (Connection con = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
             PreparedStatement ps = con.prepareStatement("INSERT INTO user (id, nom, password, type, activated) VALUES (null, ?, ?, ?, 0)")) {
            ps.setString(1, user.getNom());
            ps.setString(2, user.getPassword());
            ps.setString(3, user.getType());
            int rowsAffected = ps.executeUpdate();
            if (rowsAffected > 0) {
                System.out.println("User Created Successfully");
            } else {
                System.out.println("Failed to Create User");
            }
        }
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<User> userList = new ArrayList<>();
        try (Connection con = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
             PreparedStatement ps = con.prepareStatement("SELECT nom, type, activated FROM user")) {
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String nom = rs.getString("username");
                String password = rs.getString("password");
                String type = rs.getString("type");
                boolean activated = rs.getBoolean("activated");
                userList.add(new User(nom, password, type, activated));
                
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        request.setAttribute("userList", userList);
        request.getRequestDispatcher("home.jsp").forward(request, response);
    }
    

}
