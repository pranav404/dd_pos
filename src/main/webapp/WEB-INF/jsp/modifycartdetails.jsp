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
			<h6>Welcome User ${User.userID}</h6>
		<div class="topnav-right">
			<a class="active" href="Customer">Home</a> <a class="active"
				href="index">Logout</a>
		</div>
	</div>


	
	<form:form method="POST" action="/dd_pos/modifycart" modelAttribute = "modifycartdetails">
		<table cellspacing="20" cellpadding="20" border="3"
			style="border-collapse: collapse" height="600">
			<tr>
				<td><a href="CustAddfood">Add food item to cart</a></td>
				<td rowspan=6 width="650"><h3>Modify Cart Details</h3>
					<table border="2" width="70%" cellpadding="2">


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
				<td><form:input path = "quantity" /></td>
			</tr>
			

			<tr>
				<td>Order Date :</td>
				<td><input type = "date" name = "orderdate" /></td>
			</tr>
			<tr>

				<td colspan="2" align="center"><input type="submit"
					value="Edit Save" /></td>
			</tr>
		</table>
		<tr>
			<td><a href="ViewCartItems">View food items from cart</a></td>
			</br>
		</tr>
		</br>

		<tr>
			<td><a href="modifycartdetails">Modify cart details</a></td>
		</tr>
		</br>

		</tr>
		</br>
		<tr>
			<td><a href="confirmOrder">Confirm Order </a></td>
			</br>
		</tr>

		</br>
		<tr>
			<td><a href="Forgotpassword">Change Password</a></td>
			</br>
		</tr>
		</table>
</body>
</form:form>
