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
  <a href="Aboutus">About us</a>
    <a href="Contactus">Contact us</a>
    <h6>Welcome User ${User.userID}</h6>
  <div class="topnav-right">
  <a class="active" href="Admin">Home</a>
    <a class="active" href="index">Logout</a>
  </div>
</div>
<table cellspacing="20" cellpadding="20" border="3"
		style="border-collapse: collapse" height="600">
		<tr>
			
			<td> <a href="CustAddfood">Add Food items to cart</a></td></br>
			<td rowspan=7 width="650"><h2></h2>
				<table border="2" width="70%" cellpadding="2">
				<tr><th>CartId</th><th>Type</th><th>Quantity</th><th>Size And Price</th><th>Order Date</th><th>Edit</th><th>Delete</th></tr> 
				<c:forEach var="Cart" items="${list}">   
   <tr>  
   <td>${Cart.cartID}</td>
   <td>${Cart.foodID}</td>
   <td>${Cart.userID}</td>
   <td>${Cart.type}</td>    
   <td>${Cart.quantity}</td>
   <td>${Cart.cost} </td> 
   <td>${Cart.orderDate}</td> 
     
   <td><a href="editCart/${Cart.cartID}">Edit</a></td>  
   <td><a href="deleteCart/${Cart.cartID}">Delete</a></td>  
   </tr>  
   </c:forEach>
  
				
				

				
		</table>
		<table style ="text-align: center">
			<tr>
			<td>
			 <a href = "confirmOrder">Confirm order and pay</a>
			 <td>
			 <tr>
		</table>
		
		<tr>
			<td><a href="ViewCartItems">View food items from cart</a></td></br>
		</tr>
		</br>
		

		<tr>
			<td><a href="confirmOrder">Confirm Order </a></td></br>
		</tr>
		
		</br>
		<tr>
		<td><a href="Forgotpassword">Change Password</a></td></br>
		</tr>



</body>
</html>
