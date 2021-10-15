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
		<a href="Aboutus">About us</a> <a href="Contactus.jsp">Contact
			us</a>
		<div class="topnav-right">
			<a class="active" href="Admin.jsp">Home</a> <a class="active"
				href="index">Logout</a>
		</div>
	</div>
<form method="post" action="adddelfooditem"> 
	<table cellspacing="20" cellpadding="20" border="3"
		style="border-collapse: collapse" height="600">

		<tr>
			<td><a href="Adddelpizza">Add/Delete pizza details</a></td>
			<td rowspan=6 width="650">
						<table cellpadding="10" cellspacing="8" bgcolor="white" align="center">
			<tr>
				<th colspan="5" bgcolor=#D3D3D3 align="left">Change Password</th>
			</tr>
			<tr>
				<td>Username :</td>
				<td><input path="Username" /></td>
			</tr>
			<tr>
				<td>New Password:</td>
				<td><input path="Password" /></td>
			</tr>
			<td><input type="submit" value="Update" /></td>
			</tr>
		</table><br /> 
				</tr>
		</br>
		<tr>
			<td><a href="viewmodpizza">View/Modify pizza details</a></td>
		</tr>
		</br>
		<tr>
			<td><a href="Adddelfood">Add/Delete food details </a></td>
		</tr>
		</br>
		<tr>
			<td><a href="viewmodfood">View/Modify food details</a></td>
		</tr>
		</br>
		<tr>
			<td><a href="orderstatus">Change order status</a></td>
		</tr>
		</br>
		<tr>
			<td><a href="changepassword">Change Password</a></td>
		</tr>
		</br>


	</table>
</body>
</html>