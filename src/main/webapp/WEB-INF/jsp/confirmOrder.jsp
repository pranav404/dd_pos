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
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  width: 25%;
  background-color: #f1f1f1;
  position: fixed;
  height: 100%;
  overflow: auto;
}

li a {
  display: block;
   font-size:25px;
  color: #000;
   background-color: #04AA6D;
  padding: 30px 115px;
  text-decoration: none;
}


li a:hover:not(.active) {
  background-color: #555;
  font-size:25px;
  color: white;
}

.img {
	background-image:
		url('https://wallpapersdsc.net/wp-content/uploads/2015/11/Pizza_Widescreen4.jpg');
	height: 100%;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
</head>
<body>

<div class="topnav">
  <a href="Aboutus">About us</a>
    <a href="Contactus">Contact us</a>
    <h3 style="color:white" align="center">Welcome Customer ${User.userID}</h3>
  <div class="topnav-right">
  <a class="active" href="Customer">Home</a>
    <a class="active" href="index">Logout</a>
  </div>
</div>
<div class="img">
<div style="margin-left:0%;padding:1px 16px;height:1000px">


	<h4>Total cost = ${total}</h4>
<form method = "post" action = "payment">
<center>

			<table border="2" width="70%" cellpadding="2" align="center" style="font-size:28px; background-color:white">
<br><tr><td>
Card Number:</td><td><input type="text" name="number" placeholder="Card Number" required style="width: 300; height: 30" /> </td></tr>
<br>
<br>
<tr><td>Valid From:</td><td><input type="text" name="validfrom" placeholder="Valid From" required style="width: 300; height: 30" /> </td></tr>
<tr><td>Valid To:</td><td><input type="text" name="validto" placeholder="Valid to" required style="width: 300; height: 30" /> </td></tr>
<tr> <td>Balance</td><td><input type="number" name="Balance" placeholder="Balance" required style="width: 300; height: 30" /> </td></tr>
<br>
<br>
<tr><td colspan="2" align="center">
<input type="submit" value="PAY" name="pay" placeholder="PAY" required style="width: 300; height: 30" /> </td></tr>
</table>
</center>
</form>					
</body>
</html>
