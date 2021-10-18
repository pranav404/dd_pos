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
		<a href="Aboutus">About us</a> <a href="Contactus">Contact
			us</a>
		<div class="topnav-right">
			<a class="active" href="Customer">Home</a> <a class="active"
				href="index">Logout</a>
		</div>
	</div>
	<h4>Total cost = ${total}</h4>
<form method = "post" action = "payment">
<center>
<table cellspacing="20" cellpadding="20" border="3"
			style="border-collapse: collapse" height="600">
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