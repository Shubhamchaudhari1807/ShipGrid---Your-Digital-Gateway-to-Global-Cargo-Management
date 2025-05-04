package com.r3sys.dbcon;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserLogin
 */
public class UserLogin extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserLogin() {
        super();
        // Default constructor
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Handling GET requests (if needed)
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieving user inputs
        String user_email = request.getParameter("user_email");
        String user_password = request.getParameter("user_password");

        // Setting user email (Assumed usage for further processing, like storing session or log)
        Email.setUser_email(user_email);

        // Establish database connection and validate user credentials
        try (Connection con = ConnectDB.connect()) {
            String query = "SELECT * FROM user_tbl WHERE user_email = ? AND user_password = ?";
            try (PreparedStatement ps1 = con.prepareStatement(query)) {
                ps1.setString(1, user_email);
                ps1.setString(2, user_password);

                try (ResultSet rs1 = ps1.executeQuery()) {
                    if (rs1.next()) {
                        // Redirect to user choice page on successful login
                        response.sendRedirect("userchoice.html");
                    } else {
                        // Redirect to failure page if login fails
                        response.sendRedirect("userfailed.html");
                    }
                }
            }
        } catch (Exception e) {
            // Handle any errors that occur during database interaction
            e.printStackTrace();
            response.sendRedirect("userfailed.html"); // In case of exception, redirect to failure page
        }
    }
}
