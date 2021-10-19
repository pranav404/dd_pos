<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
			<a class="active" href="Admin">Home</a> <a class="active"
				href="index">Logout</a>
		</div>
	</div>
<form method="post" action="changepass"> 
	<table cellspacing="20" cellpadding="20" border="3"
		style="border-collapse: collapse" height="600">

		<tr>
			
			<td rowspan=6 width="650">
						<table cellpadding="10" cellspacing="8" bgcolor="white" align="center">
			<tr>
				<th colspan="5" bgcolor=#D3D3D3 align="left">Change Password</th>
			</tr>
			<tr>
				<td>Username :</td>
				<td><input type = "text" name="username" /></td>
			</tr>
			<tr>
				<td>New Password:</td>
				<td><input type ="password" name="password" /></td>
			</tr>
			<td><input type="submit" value="Update" /></td>
			</tr>
		</table><br /> 
				</tr>
		</br>
		


	</table>
</body>
</html>