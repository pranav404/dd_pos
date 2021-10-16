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
		<div class="topnav-right">
			<a class="active" href="Customer.jsp">Home</a> <a class="active"
				href="index.jsp">Logout</a>
		</div>
	</div>


	
	<form:form method="POST" action="">
		<table cellspacing="20" cellpadding="20" border="3"
			style="border-collapse: collapse" height="600">
			<tr>
				<td><a href="CustAddfood">Add food item to cart</a></td>
				<td rowspan=6 width="650"><h3>Modify Cart Details</h3>
					<table border="2" width="70%" cellpadding="2">


						<td><form:hidden value="CartId" name="CartId" /></td>
			</tr>
			<tr>
				<td><label for="Type">Pizza Type:</label>
				<td><select id="Type" name="Type">
						<c:forEach  var="food"  items="${list}">
        <option value="${food.name}+${food.type}">${food.name} ${food.type}, ${food.foodsize}  </option>
    </c:forEach>
				</select></td>
				</td>
			</tr>
			<tr>
				<td>quantity:</td>
				<td><input type="text" name="quantity" /></td>
			</tr>
			

			<tr>
				<td>Order Date :</td>
				<td><form:input type="textbox" name="OrderDate" /></td>
			</tr>
			<tr>

				<td colspan="2" align="center"><input type="submit"
					value="Edit Save" /></td>
			</tr>
		</table>
		<tr>
			<td><a href="ViewCartItems.jsp">View food items from cart</a></td>
			</br>
		</tr>
		</br>

		<tr>
			<td><a href="modifycartdetails.jsp">Modify cart details</a></td>
		</tr>
		</br>

		</tr>
		</br>
		<tr>
			<td><a href="confirmOrder.jsp">Confirm Order </a></td>
			</br>
		</tr>

		</br>
		<tr>
			<td><a href="Forgotpassword.jsp">Change Password</a></td>
			</br>
		</tr>
		</table>
</body>
</form:form>
