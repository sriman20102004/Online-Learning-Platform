package com.onlinelearning;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;

@WebServlet("/courses")
public class CourseListServlet extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 3404358842201300683L;

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {

        ArrayList<String[]> list = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/online_learning", 
                "root", 
                ""
            );

            PreparedStatement ps = con.prepareStatement("SELECT * FROM courses");
            ResultSet rs = ps.executeQuery();

            while(rs.next()) {
                String[] data = {
                    rs.getString("id"),
                    rs.getString("title"),
                    rs.getString("description")
                };
                list.add(data);
            }

            req.setAttribute("data", list);
            req.getRequestDispatcher("courses.jsp").forward(req, res);

        } catch (Exception e) {
            e.printStackTrace();
            res.getWriter().println("Error occurred");
        }
    }
}
