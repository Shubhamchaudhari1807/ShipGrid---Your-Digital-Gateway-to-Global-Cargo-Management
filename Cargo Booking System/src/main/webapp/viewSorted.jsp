<%@page import="com.r3sys.dbcon.*" %>
<%@page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
  <title>VIEWING PENDINS BOOKINGS </title>
  <style>
    body {
      font-family: Arial, sans-serif;
      line-height: 1.6;
      background-image:('pexels-matthis-volquardsen-2326876.jpg');
      background-size: cover;
      background-repeat: no-repeat;
      background-position: center center;
    }
    table {
      border-collapse: collapse;
      width: 100%;
      margin-bottom: 20px;
    }
    th, td {
      border: 1px solid #ddd;
      padding: 10px;
      text-align: center;
    }
    th {
      background-color: #ffb90f;
      font-weight: bold;
    }
    tr:nth-child(even) {
      background-color: #ff7256;
    }
    tr:hover {
      background-color: #6495ed;
    }
    td {
      font-size: 14px;
    }
    h1 {
      margin-top: 1;
      background-color: #333;
      color: #fff;
      padding: 15px;
      text-align:center;
      }
     .btn{
      	height:40px;
      	width:70px;
      	color:red;
      	background-color:inherit;
      	border-radius:50px;
      	margin:0px 10px;
      	transition:all 0.2s;
      }
      .btn:hover{
      background-color:red;
      color:#fff; 
      }
      .color{
      color:green;
      border:2px solid green;
      }
      .color:hover{
      background-color:green;
      }
      .back{
      width:200px;
      height:50px;
      font-size:1.3rem;
      color:grey;
      border-radius:100px;
      display:flex;
      justify-content:center;
      align-terma:center;
      margin-bottom:50px;
      }
      a{
      text-decoration:none;
      }
      .back:hover{
      background-color:#999;
      color:#fff; 
      }
      </style>
 </head>
  <body>
       <h1>VIEWING CARGO DETAILS</h1>
  <table>
    <thead>
      <tr>
        <th>BOOKING-ID</th>
         <th>CARGO_NAME</th>
        <th>USER_EMAIL</th>
        <th>CARGO_SOURCE</th>
        <th>CARGO_DESTINATION</th>
        <th>CARGO_MATERIAL</th>
        <th>CARGO_QUANTITY</th>
        <th>BOOKING_DATE</th>
         <th>CARGO_CHANGE</th>
      </tr>
    </thead>
    <tbody>
    <%
    	
    		Connection con = ConnectDB.connect();
			try
			{
				PreparedStatement ps= con.prepareStatement("select * from booking_tbl where booking_status = 0");
				
				ResultSet rs = ps.executeQuery();
				while(rs.next())
				{
    	
     %>
     <tr>
							    <td><%=rs.getInt("booking_id") %></td>
							    <td><%=rs.getString("cargo_name")%></td>
							    <td><%=rs.getString("user_email")%></td>
							    <td><%=rs.getString("cargo_source")%></td>
							    <td><%=rs.getString("cargo_destination")%></td>
							    <td><%=rs.getString("cargo_material")%></td>
          						<td><%=rs.getString("cargo_quantity")%></td>
          						<td><%=rs.getString("date")%></td>
							    <td><a href="approved.jsp?id=<%=rs.getInt("booking_id") %>">Pending</a></td>
							    
							    
							  
							    
					 <%
			  		}
			  	}
			  	catch(Exception e)
			  	{
			  		e.printStackTrace();
			  	}
			  
			  %>
			   
			  		    
							    
      <tr>
		
		<a href="userchoice.html"><button class="back"><ion-icon name="arrow-back-outline"></ion-icon>Back</button></a>
    </tbody>
  </table>
  <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>
    </tbody>
  </table>
</body>
</html>
