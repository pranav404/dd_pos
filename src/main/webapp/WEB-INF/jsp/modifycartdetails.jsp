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
	padding: 25px 80px;
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
		<h3 style="color: white" align="center">Welcome Customer
			${User.userID}</h3>
		<div class="topnav-right">
			<a class="active" href="/dd_pos/Customer">Home</a> <a class="active"
				href="logout">Logout</a>
		</div>
	</div>

	<ul>
		<li><a href="/dd_pos/CustAddfood">Add food item to cart</a></li>
		<li><a href="/dd_pos/ViewCartItems">View food items from cart</a></li>
		<li><a href="/dd_pos/modifycartdetails">Modify cart details</a></li>
		<li><a href="/dd_pos/confirmOrder">Confirm Order </a></li>
	
		<li><a href="/dd_pos/Forgotpassword">Change Password</a></li>
	</ul>
	<div class="img">
		<div style="margin-left: 25%; padding: 1px 16px; height: 1000px">
<h1 align="center">
<table border="2" width="50%" cellpadding="2" align="center" style="font-size:28px; background-color:white">


				
				<td rowspan=7 width="650" align="center"><h2>Modify cart Details</h2>
				<table border="2" width="70%" cellpadding="2">

	
	<form:form method="POST" action="/dd_pos/modifycart" modelAttribute = "modifycartdetails">
		


						<td><form:hidden path = "cartID" /></td>
			</tr>
			<tr>
				<td><label for="Type">Pizza Type:</label>
				<td><form:select path = "foodID">
						<c:forEach  var="food"  items="${list}">
        <form:option value="${food.foodid }+${food.name}+${food.type}+${food.price}">${food.name} ${food.type}, ${food.foodsize} price per peice = ${food.price} </form:option>
    </c:forEach>
				</form:select></td>
				</td>
			</tr>
			<tr>
				<td>quantity:</td>
				<td><form:input path = "quantity" required="required" /></td>
			</tr>
			

			<tr>
				<td>OrderDate:</td>
				<td><input type = "date" name = "orderdate" required /></td>
			</tr>
			<tr>

				<td colspan="2" align="center"><input type="submit"
					value="Edit Save" /></td>
			</tr>
		</table>
		
		</table>
</body>
</form:form>

