<%@page import="com.r3sys.dbcon.*" %>
<%@page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Details</title>
</head>
<body>
		<%
			int cargo_id = Integer.parseInt(request.getParameter("id"));
		System.out.print(cargo_id);
        	Connection con = ConnectDB.connect();
        	try{
        		PreparedStatement ps = con.prepareStatement("Delete FROM cargo_tbl where cargo_id =?");
        		ps.setInt(1,cargo_id);
        
        		int i = ps.executeUpdate();
        		if(i>0){
        			response.sendRedirect("success.html");
        		}else{
        			response.sendRedirect("failed.html");
        		}
        		
        	}catch(Exception e){
        		e.printStackTrace();
        	}
        
        %>
</body>
</html>