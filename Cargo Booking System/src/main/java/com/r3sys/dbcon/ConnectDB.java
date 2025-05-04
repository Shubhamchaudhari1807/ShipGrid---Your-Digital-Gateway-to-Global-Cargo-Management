package com.r3sys.dbcon;

import java.sql.*;

public class ConnectDB
{
	 static Connection con=null;
	 public static Connection connect()
	 {
		 if (con==null)
		 {
			 try 
			 {
				Class.forName("com.mysql.cj.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cargo_bookingsystem?serverTimezone=UTC","root","root");
				System.out.println("Connected..");
			} catch (Exception e)
			 {
				System.err.println("Something went wrong...!!");
				e.printStackTrace();
			}
			 
		 }
		return con;
		 
	 }
	 
	
}
