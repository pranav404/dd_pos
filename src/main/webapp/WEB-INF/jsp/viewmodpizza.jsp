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
<h1 align="center">
View/Modify Store details
</h1>
<table border="2" width="70%" cellpadding="2" align="center" style="font-size:28px; background-color:white">
						<tr>
						<th>Store ID</th>
						<th>Name</th>
						<th>Street</th>
						<th>Mobile No</th>
						<th>City</th>
						<th>State</th>
						<th>Pincode</th>
						<th>Edit</th>
					</tr>
					<c:forEach var="pizza" items="${list}">
						<tr>
							<td>${pizza.storeID }
							<td>${pizza.name }</td>
							<td>${pizza.street }</td>
							<td>${pizza.mobileNo}</td>
							<td>${pizza.city}</td>
							<td>${pizza.state }</td>
							<td>${pizza.pincode}</td>
							<td><a href="editpizza/${pizza.storeID}">Edit</a></td>
						</tr>
					</c:forEach>
					</table> <br />
					

		</div>
</body>
</html>
