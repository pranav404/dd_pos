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
		<a href="Aboutus.jsp">About us</a> <a href="Contactus.jsp">Contact
			us</a>
			<h6>Welcome User ${User.userID}</h6>
		<div class="topnav-right">
			<a class="active" href="Admin.jsp">Home</a> <a class="active"
				href="index.jsp">Logout</a>
		</div>
	</div>  
	<table cellspacing="20" cellpadding="20" border="3"
		style="border-collapse: collapse" height="600">

		<tr>
			<td><a href="Adddelpizza.jsp">Add/Delete pizza details</a></td>
			<td rowspan=6 width="650"><h3>Change order status</h3>
				<table border="2" width="70%" cellpadding="2">
					<tr>
						<th>Order Id</th>
						<th>Order Date</th>
						<th>Store Id</th>
						<th>Cart ID</th>
						<th>Street</th>
						<th>City</th>
						<th>State</th>
						<th>Pincode</th>
						<th>Mobile Number</th>
						<th>Order Status</th>
						<th>Change</th>
					</tr>
					<c:forEach var="status" items="${list}">
						<tr>
							<td>${status.orderid}</td>
							<td>${status.orderdate}</td>
							<td>${status.storeid}</td>
							<td>${status.cartid}</td>
							<td>${status.street}</td>
							<td>${status.city}</td>
							<td>${status.state}</td>
							<td>${status.pincode}</td>
							<td>${status.mobileno}</td>
							<td>${status.orderstatus}</td>
							<td><a href="changestatus/${status.orderid}">Change</a></td>
						</tr>
					</c:forEach>
				</table> <br />
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
	</form>
</body>
</html>