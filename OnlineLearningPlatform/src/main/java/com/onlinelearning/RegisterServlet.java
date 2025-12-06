package com.onlinelearning;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.sql.*;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = -111069381494192218L;

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {

        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String pass = req.getParameter("password");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/online_learning", 
                "root", 
                ""
            );

            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO users(name,email,password) VALUES(?,?,?)"
            );

            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, pass);

            int row = ps.executeUpdate();

            if(row > 0) {
                res.sendRedirect("login.jsp");
            } else {
                res.getWriter().println("Registration failed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            res.getWriter().println("Error occurred");
        }
    }
}
