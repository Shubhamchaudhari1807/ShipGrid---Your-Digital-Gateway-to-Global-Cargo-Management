<%@page import="com.r3sys.dbcon.*" %>
<%@page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: black; /* Set the background color to black */
  color: white; /* Set text color to white */
}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password], input[type=date], input[type=time]{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
  background-color: #f1f1f1; /* Set input fields background color */
  color: black; /* Set input fields text color to black */
}

button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
    display: block;
    float: none;
  }
  .cancelbtn {
    width: 100%;
  }
}
</style>
</head>
<body>
<%
String cargo_id = request.getParameter("id");
System.out.println(cargo_id);

Setter.setCargo_name(Integer.parseInt(cargo_id));
System.out.print(Setter.getCargo_name());

%>
    <form action="UpdateCargo" method="post">
        <h1>UPDATE CARGO DETAILS</h1>
        <label for="capacity"> cargo_capacity:</label>
        <input type="text"  name="capacity" required>
        <label for="arriveltime">cargo_timetable :</label>
        <input type="date"  name = "ctime" required>
        
        <label for="departuretime">cargo_arrival :</label>
        <input type="time"  name = "carrival" required>
        
        <label for="dateandtime">cargo_departure</label>
        <input type="time"  name="cdeparture" required>
        <br>
        <button>Add Cargo</button>
    </form>
    
</body>
</html>