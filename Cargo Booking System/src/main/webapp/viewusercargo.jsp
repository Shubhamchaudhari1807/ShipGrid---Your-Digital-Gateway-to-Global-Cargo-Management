<%@page import="com.r3sys.dbcon.*" %>
<%@page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title>VIEWING CARGO DETAILS</title>
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
        <th>CARGO_ID</th>
        <th>CARGO_NAME</th>
        <th>CARGO_CAPACITY</th>
        <th>CARGO_TIMETABLE</th>
        <th>CARGO_ARRIVAL</th>
        <th>CARGO_DEPARTURE</th>
        <th>CARGO_CHANGE</th>
      </tr>
    </thead>
    <tbody>
    <%
    	
    		Connection con = ConnectDB.connect();
			try
			{
				PreparedStatement ps= con.prepareStatement("select * from cargo_tbl");
				
				ResultSet rs = ps.executeQuery();
				while(rs.next())
				{
    	
     %>
     <tr>
							    <td><%=rs.getInt("cargo_id") %></td>
							    <td><%=rs.getString("cargo_name")%></td>
							    <td><%=rs.getString("cargo_capacity")%></td>
							    <td><%=rs.getString("cargo_timetable")%></td>
							    <td><%=rs.getString("cargo_arrival")%></td>
							    <td><%=rs.getString("cargo_departure")%></td>
							    <td><a href="bookcargo.jsp?id=<%=rs.getString("cargo_name")%>"><button class="btn color">BOOK</button></a>
							  
							    
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
    