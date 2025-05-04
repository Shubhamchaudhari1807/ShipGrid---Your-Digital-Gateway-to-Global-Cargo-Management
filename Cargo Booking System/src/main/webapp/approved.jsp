<%@page import="com.r3sys.dbcon.*" %>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
        int booking_id =Integer.parseInt(request.getParameter("id"));
         try
         {
        	 Connection con = ConnectDB.connect();
        	 int n=1;
        	 PreparedStatement ps1 = con.prepareStatement("update booking_tbl set booking_status=? where booking_id=?");
        	 ps1.setInt(1,n);
        	 ps1.setInt(2,booking_id);
        	 int i = ps1.executeUpdate();
        	 if(i==1)
        	 {
        		 response.sendRedirect("addtobooking.jsp");
        	 }
        	 else
        	 {
        		 System.out.println("Error");
        	 }
         }
         catch(Exception e)
         {
        	 e.printStackTrace();
         }

%>

</body>
</html>
</body>
</html>