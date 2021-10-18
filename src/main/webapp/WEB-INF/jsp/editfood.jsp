<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
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
			<a class="active" href="Admin">Home</a> <a class="active"
				href="index">Logout</a>
		</div>
	</div>
	<form:form method="POST" action="/dd_pos/saveeditfood" modelAttribute="editfood">
		<table cellspacing="20" cellpadding="20" border="3"
			style="border-collapse: collapse" height="600">

			<tr align="center">
				<td><a href="/dd_pos/Adddelpizza">Add/Delete pizza details</a></td>
				<td rowspan=6 width="650">
					<h3>Edit Food Item</h3>

					<table>
						<tr>
							<td></td>
							<td><form:hidden path="foodid" /></td>
						</tr>
						<tr>
							<td>Name :</td>
							<td><form:input path="Name" /></td>
						</tr>
						<tr>
							<td>Food Type :</td>
							<td><form:input path="Type" /></td>
						</tr>
						<tr>
							<td>Order Quantity :</td>
							<td><form:input path="Quantity" /></td>
						</tr>
						<tr>
						<tr>
							<td>Food Size :</td>
							<td><form:input path="Foodsize" /></td>
						</tr>
						<tr>
							<td>Price :</td>
							<td><form:input path="price" /></td>
						</tr>

						<tr>
							<td></td>
							<td><input type="submit" value="Edit Save" /></td>
						</tr>
					</table> <br />
					</form:form>
			</tr>
			</br>
			<tr>
				<td><a href="/dd_pos/viewmodpizza">View/Modify pizza details</a></td>
			</tr>
			</br>
			<tr>
				<td><a href="/dd_pos/Adddelfood">Add/Delete food details </a></td>
			</tr>
			</br>
			<tr>
				<td><a href="/dd_pos/viewmodfood">View/Modify food details</a></td>
			</tr>
			</br>
			<tr>
				<td><a href="/dd_pos/orderstatus">Change order status</a></td>
			</tr>
			</br>
			<tr>
				<td><a href="/dd_pos/changepassword">Change Password</a></td>
			</tr>
			</br>


		</table>

	</form>
</html>