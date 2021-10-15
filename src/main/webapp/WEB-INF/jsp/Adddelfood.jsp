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
<form method="post" action="adddelfooditem"> 
	<table cellspacing="20" cellpadding="20" border="3"
		style="border-collapse: collapse" height="600">

		<tr>
			<td><a href="Adddelpizza">Add/Delete pizza details</a></td>
			<td rowspan=6 width="650"><h3>Add/ Delete food details</h3>
				<table border="2" width="70%" cellpadding="2">
					<tr>
						<th>Food Id</th>
						<th>Name</th>
						<th>Type</th>
						<th>Food Size</th>
						<th>Order Quantity</th>
						<th>Price</th>
						<th>Delete</th>
					</tr>
					<c:forEach var="food" items="${list}">
						<tr>
							<td>${food.foodid}</td>
							<td>${food.name}</td>
							<td>${food.type}</td>
							<td>${food.quantity}</td>
							<td>${food.foodsize}</td>
							<td>${food.price}</td>
							<td><a href="deletefood/${food.foodid}">Delete</a></td>
						</tr>
					</c:forEach>
				</table> <br /> <a href="foodform">Add Food Details</a></td>
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