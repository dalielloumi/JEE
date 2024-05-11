package tn.iit.controller;


import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Servlet implementation class AthentificationServlet
 */
public class AthentificationServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
    
	   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        try {
	            PrintWriter out = response.getWriter();
	            response.setContentType("text/html");
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jee", "root", "");
	            String n = request.getParameter("username");
	            String p = request.getParameter("password");
	            PreparedStatement ps = con.prepareStatement("SELECT nom, type FROM user WHERE nom=? AND password=?");
	            ps.setString(1, n);
	            ps.setString(2, p);
	            ResultSet rs = ps.executeQuery();
	            if (rs.next()) {
	                String userType = rs.getString("type");
	                if ("enseignant".equals(userType)) {
	                    RequestDispatcher rd = request.getRequestDispatcher("enseignant.jsp");
	                    rd.forward(request, response);
	                } else if ("admin".equals(userType)) {
	                    RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
	                    rd.forward(request, response);
	                }
	                else if ("AgentDeTirage".equals(userType)) {
	                    RequestDispatcher rd = request.getRequestDispatcher("AgentDeTirage.jsp");
	                    rd.forward(request, response);
	                }else {
	                    out.println("<font color=red size =18>Invalid user type!<br>");
	                    out.println("<a href=login.jsp>Try Again</a>");
	                }
	            } else {
	                out.println("<font color=red size =18>login failed!!<br>");
	                out.println("<a href=login.jsp>Try Again</a>");
	            }
	        } catch (ClassNotFoundException e) {
	            e.printStackTrace();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }


}
