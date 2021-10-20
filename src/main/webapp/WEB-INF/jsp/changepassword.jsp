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
	<script type="text/javascript">
		function validate() {
			var username = document.f8.username.value;
			var password = document.f8.password.value;
			var s = false;
			var s2 = false;
			if (username == "") {
				document.getElementById("usernamelocation").innerHTML = "Please enter the your username";
				s = false;
			} else {
				document.getElementById("usernamelocation").innerHTML = "";
				s = true;
			}
			if (password == "") {
				document.getElementById("passwordlocation").innerHTML = "Please enter the password";
				s2 = false;
			} else {
				document.getElementById("passwordlocation").innerHTML = "";
				s2 = true;
			}
			return s&&s2;
		}
	</script>
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
<form name="f8" method="post" action="changepass" onsubmit="return validate()"> 
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
				<td><input type = "text" name="username" /><span id="usernamelocation"
				style="color: red; font-size: 20px"></span></td>
			</tr>
			<tr>
				<td>New Password:</td>
				<td><input type ="password" name="password" /><span
			        id="passwordlocation" style="color: red; font-size: 20px"></span></td>
			</tr>
			<td><input type="submit" value="Update" /></td>
			</tr>
		</table><br /> 
				</tr>
		</br>
		


	</table>
</body>
</html>
