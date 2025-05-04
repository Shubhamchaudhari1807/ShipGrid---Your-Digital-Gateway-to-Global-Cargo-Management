package com.r3sys.dbcon;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CargoAdd
 */
public class CargoAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CargoAdd() {
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
		
		String cargo_id=request.getParameter("cargo_id");
		String cargo_name=request.getParameter("cargo_name");
		String cargo_capacity=request.getParameter("cargo_capacity");
		String cargo_timetable=request.getParameter("cargo_timetable");
		String cargo_arrival=request.getParameter("cargo_arrival");
		String cargo_departure=request.getParameter("cargo_departure");
		Email.setname(cargo_name);
		try
		{
			Connection con=ConnectDB.connect();
			PreparedStatement ps1=con.prepareStatement("insert into cargo_tbl values(?,?,?,?,?,?)");
			ps1.setString(1,cargo_id);
			ps1.setString(2,cargo_name );
			ps1.setString(3,cargo_capacity );
			ps1.setString(4, cargo_timetable);
			ps1.setString(5, cargo_arrival);
			ps1.setString(6, cargo_departure);
			
			 int i =ps1.executeUpdate();
			 if(i==1)
			 {
				System.out.println("ADDED....");
				 response.sendRedirect("success.html");
			 }
			 else
			 {
				 System.out.println("ADded....");
				 response.sendRedirect("failed.html");
			 }
		}
		catch(Exception e)
		{
			e.getStackTrace();
		}
	}
	

}
