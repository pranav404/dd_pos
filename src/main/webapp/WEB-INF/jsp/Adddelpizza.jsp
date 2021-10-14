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
	<table cellspacing="20" cellpadding="20" border="3"
		style="border-collapse: collapse" height="600">

		<tr>
			<td><a href="Adddelpizza">Add/Delete pizza details</a></td>
			<td rowspan=6 width="650"><h3>Add/ Delete pizza details</h3>
				<table border="2" width="70%" cellpadding="2">
					<tr>
						<th>Store Id</th>
						<th>Name</th>
						<th>Street</th>
						<th>Mobile No</th>
						<th>City</th>
						<th>State</th>
						<th>Pincode</th>
					</tr>
					<c:forEach var="pizza" items="${list}">
						<tr>
							<td>${pizza.storeID}</td>
							<td>${pizza.name }</td>
							<td>${pizza.street }</td>
							<td>${pizza.mobileNo}</td>
							<td>${pizza.city}</td>
							<td>${pizza.state }</td>
							<td>${pizza.pincode}</td>
							<td><a href="deletepizza/${pizza.storeID}">Delete</a></td>
						</tr>
					</c:forEach>
				</table> 
				
				<br /> <a href="pizzaform">Add Pizza Details</a></td>
		</tr>
		
		<tr>
			<td><a href="viewmodpizza">View/Modify pizza details</a></td>
		</tr>
		
		<tr>
			<td><a href="Adddelfood">Add/Delete food details </a></td>
		</tr>
				<tr>
			<td><a href="viewmodfood">View/Modify food details</a></td>
		</tr>
		
		<tr>
			<td><a href="orderstatus">Change order status</a></td>
		</tr>
		
		<tr>
			<td><a href="changepassword">Change Password</a></td>
		</tr>
		


	</table>
</body>
</html>