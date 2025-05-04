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
   background-image: url(ship1.jpg);
  background-position:center;
  background-size:cover;
  background-repeat:no-repeat;
}


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

.container{
	width:500px;
	margin-left:500px;
	margin-bottom:40px;
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
  height:150px;
  width:150px;
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

.cancelbtn{
	margin-left:720px;
	margin-top:-80px;
	color:green;
	
}
</style>
</head>
<body>

 <form action="BookingCargo" method ="post">
<center> <h1>WELCOME TO CARGO_SHIPMENT </h1> </center>   
<center> <h2>BOOK CARGO </h2> </center>
   
  

 <div class="imgcontainer">
    <img src="logo.jpg" alt="logo" class="avatar">
  </div>

  <div class="container">
  
   <label for="uname"><b> Source</b></label>
    <input type="text" placeholder="Enter Source" name="cargo_source" required>
    
     <label for="uname"><b> Destination</b></label>
    <input type="text" placeholder="Enter destination" name="cargo_destination" required>
    
    <label for="uname"><b>Date</b></label>
    <input type="date" placeholder="Enter date " name="date" required>

   <label for="uname"><b>Material</b></label>
    <input type="text" placeholder="Enter material " name="cargo_material" required>
   
        
        <label for="Quantity">Quantity:</label>
        <input type="text"  name="Quantity" required>
        <br>
        <button>DONE</button>
    </form>
    
    <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
    </label>
  </div>
   
  
    <button type="button" class="cancelbtn"><a href="viewcargo.jsp">BACK</a></button>
    <span class="psw">Cargo Shipping !!</a></span>
  </div>
</form>

</body>
</html>

