package com.onlinelearning;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.sql.*;

@WebServlet("/addCourse")
public class AddCourseServlet extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 8724423053002587737L;

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {

        String title = req.getParameter("title");
        String desc = req.getParameter("description");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/online_learning", 
                "root", 
                ""
            );

            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO courses(title,description) VALUES(?,?)"
            );
            ps.setString(1, title);
            ps.setString(2, desc);

            ps.executeUpdate();
            res.sendRedirect("courses");

        } catch (Exception e) {
            e.printStackTrace();
            res.getWriter().println("Error occurred");
        }
    }
}
