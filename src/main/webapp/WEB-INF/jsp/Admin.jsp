<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
<style>
.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}


.topnav a.active {
  background-color: #04AA6D;
  color: white;
}

.topnav-right {
  float: right;
}
</style>
</head>
<body>

<div class="topnav">
  <a href="Aboutus.jsp">About us</a>
    <a href="Contactus.jsp">Contact us</a>
  <div class="topnav-right">
  <a class="active" href="Admin.jsp">Home</a>
    <a class="active" href="index.jsp">Logout</a>
  </div>
</div>

  <table cellspacing="20" cellpadding="20" border="3" style="border-collapse:collapse" >
  
  <tr> <td><a href="Adddelpizza.jsp">Add/Delete pizza details</a></td></tr></br>
  <tr><td> <a href="viewmodpizza.jsp">View/Modify pizza details</a></td></tr></br>
   <tr><td><a href="Adddelfood.jsp">Add/Delete food details </a></td></tr></br>
   <tr><td><a href="viewmodfood.jsp">View/Modify food details</a></td></tr></br>
   <tr><td><a href="orderstatus.jsp">Change order status</a></td></tr></br>
   <tr><td><a href="Forgotpassword.jsp">Change Password</a></td></tr></br>

  
  </table>
</body>
</html>