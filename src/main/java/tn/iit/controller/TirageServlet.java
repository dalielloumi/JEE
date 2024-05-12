package tn.iit.controller;
import java.io.IOException;
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

public class TirageServlet extends HttpServlet {
	private static final String JDBC_URL = "jdbc:mysql://localhost:3306/examjee";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "";

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        
        if (action != null && action.equals("download")) {
          
            response.sendRedirect("index.jsp");
        } else if (action != null && action.equals("delete")) {

            response.sendRedirect("index.jsp");
        }
    }
}
