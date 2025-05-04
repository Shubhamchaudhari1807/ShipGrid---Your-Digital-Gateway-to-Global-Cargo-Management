package com.r3sys.dbcon;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BookingCargo
 */
public class BookingCargo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookingCargo() {
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
		
		String cargo_source = request.getParameter("cargo_source");
		String cargo_destination = request.getParameter("cargo_destination");
		String cargo_material = request.getParameter("cargo_material");
		String cargo_quantity = request.getParameter("Quantity");
		String date = request.getParameter("date");
		String email=Email.getUser_email();
		System.out.print(date);
		Connection con = ConnectDB.connect();
		try{
			String cargo=null;
		PreparedStatement ps1 = con.prepareStatement("select *from cargo_tbl");
		ResultSet rs= ps1.executeQuery();
		while(rs.next())
		{
			 cargo=rs.getString(2);
		}
		
		
//		
//		PreparedStatement ps1 = con.prepareStatement("SELECT * FROM booking_tbl where cargo_source = ? and cargo_destination = ? and cargo_timetable = ?");
//		ps1.setString(1, cargo_source);
//		ps1.setString(2, cargo_destination);
//		ps1.setString(3, date);
//		ResultSet rs = ps1.executeQuery();
//		if(rs.next()){
//			cargo_name = rs.getString("cargo_name");
//		}
		
			int j = 0;
			
		PreparedStatement ps = con.prepareStatement("INSERT into booking_tbl values(?,?,?,?,?,?,?,?,?)");
		ps.setInt(1, 0);
		ps.setString(2, cargo_source);
		ps.setString(3,cargo_destination);
		ps.setString(4,cargo_material);
		ps.setString(5, cargo_quantity);
		ps.setString(6,cargo);
		ps.setString(7,email);
		ps.setString(8,date);
		ps.setInt(9,j);
		int i = ps.executeUpdate();
		if(i>0){
			response.sendRedirect("usersuccess.html");
		}
		else{
			System.out.println("userfailed.html");
			
		}
	}
	catch(Exception e){
		e.printStackTrace();
		
	}
	

	}

}
