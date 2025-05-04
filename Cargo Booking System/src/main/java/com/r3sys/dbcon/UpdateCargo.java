package com.r3sys.dbcon;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateCargo
 */
public class UpdateCargo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateCargo() {
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
		String cargo_capacity = request.getParameter("capacity");
		  String cargo_timetable = request.getParameter("ctime");
		  String cargo_arrival = request.getParameter("carrival");
		  String cargo_departure = request.getParameter("cdeparture");
		  Connection con= ConnectDB.connect();
		  PreparedStatement ps;
		try {
			ps = con.prepareStatement("UPDATE cargo_tbl set cargo_capacity = ?,cargo_timetable = ?,cargo_arrival = ?, cargo_departure = ? where cargo_id = ?");
			ps.setString(1, cargo_capacity);
			  ps.setString(2, cargo_timetable);
			  ps.setString(3, cargo_arrival);
			  ps.setString(4, cargo_departure);
			  ps.setInt(5, Setter.getCargo_name());
			  int i = ps.executeUpdate();
			  if(i>0){
				  response.sendRedirect("viewcargo.jsp");
			  }
		}
		catch (SQLException e)
		{
			// TODO Auto-generated catch block
			  e.printStackTrace();
		}
	}

}
