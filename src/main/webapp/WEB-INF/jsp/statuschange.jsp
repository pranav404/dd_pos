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
	font-size: 25px;
	color: #000;
	background-color: #04AA6D;
	padding: 25px 40px;
	text-decoration: none;
}

li a:hover:not(.active) {
	background-color: #555;
	font-size: 25px;
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
		<a href="Aboutus">About us</a> <a href="Contactus">Contact us</a>
		<h3 style="color: white" align="center">Welcome Admin
			${User.userID}</h3>
		<div class="topnav-right">
			<a class="active" href="/dd_pos/Admin">Home</a> <a class="active"
				href="logout">Logout</a>
		</div>
	</div>

	<ul>
		<li><a href="Adddelpizza">Add/Delete pizza store details</a></li>
		<li><a href="viewmodpizza">View/Modify pizza store details</a></li>
		<li><a href="Adddelfood">Add/Delete food details</a></li>
		<li><a href="viewmodfood">View/Modify food details</a></li>
		<li><a href="orderstatus">Change order status</a></li>
		<li><a href="Forgotpassword">Change Password</a></li>
	</ul>
	<div class="img">
		<div style="margin-left: 25%; padding: 1px 16px; height: 1000px">
			<h1 align="center">Change Status</h1>
			<form:form method="POST" action="/dd_pos/statuschange">
				<table border="2" width="70%" cellpadding="2" align="center"
					style="font-size: 28px; background-color: white">
					<tr>
						<td></td>
						<td><hidden path="cartID" /></td>
					</tr>
					<tr>
						<td>Order ID :</td>
						<td><form:input path="orderID" required="required"/></td>
					</tr>
					<tr>
						<td>Order Status :</td>
						<td><form:input path="orderStatus" required="required"/></td>
					</tr>

					<tr>
						<td colspan="2" align="center"><input type="submit"
							value="Edit Save" /></td>
					</tr>
				</table>
				<br />
			</form:form>

		</div>
</body>
</html>
