package com.r3sys.dbcon;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserRegister
 */
public class UserRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserRegister() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String user_id=request.getParameter("user_id");
		String user_name=request.getParameter("user_name");
		String user_mob=request.getParameter("user_mob");
		String user_email=request.getParameter("user_email");
		String user_password=request.getParameter("user_password");
		
		try
		{
			Connection con=ConnectDB.connect();
			PreparedStatement ps1=con.prepareStatement("insert into user_tbl values(?,?,?,?,?)");
			ps1.setString(1,user_id);
			ps1.setString(2,user_name );
			ps1.setString(3,user_mob);
			ps1.setString(4, user_email);
			ps1.setString(5,user_password);
			
			
			 int i =ps1.executeUpdate();
			 if(i==1)
			 {
				
				 response.sendRedirect("usersuccess.html");
			 }
			 else
			 {
				 System.out.println("ADded....");
				 response.sendRedirect("userfailed.html");
			 }
		}
		catch(Exception e)
		{
			e.getStackTrace();
		}
	}
	


}
