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
		<div class="topnav-right">
			<a class="active" href="Admin">Home</a> <a class="active"
				href="index">Logout</a>
		</div>
	</div>
	<form:form method="POST" action="/dd_pos/saveeditpizza" modelAttribute="editStore">
		<table cellspacing="20" cellpadding="20" border="3"
			style="border-collapse: collapse" height="600">

			<tr align="center">
				<td><a href="/dd_pos/Adddelpizza">Add/Delete pizza details</a></td>
				<td rowspan=6 width="650">
					<h3>Edit Food Item</h3>

					<table>
					<tr>  
        			<td></td>    
         			<td><form:hidden  path="storeID" /></td>  
         			</tr>
						<tr>
							<td>Name :</td>
							<td><form:input path="Name" /></td>
						</tr>
						<tr>
							<td>Street :</td>
							<td><form:input path="Street" /></td>
						</tr>
						<tr>
							<td>MobileNo :</td>
							<td><form:input path="mobileNo" /></td>
						</tr>
						<tr>
							<td>City :</td>
							<td><form:input path="City" /></td>
						</tr>
						<tr>
							<td>State :</td>
							<td><form:input path="State" /></td>
						</tr>
						<tr>
							<td>Pincode :</td>
							<td><form:input path="Pincode" /></td>
						</tr>
						<tr>
							<td></td>
							<td><input type="submit" value="Save" /></td>
						</tr>
					</table>
					</td>
					
					</form:form>
			</tr>
			
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
				<td><a href="dd_pos/changepassword">Change Password</a></td>
			</tr>
			</br>


		</table>

</html>