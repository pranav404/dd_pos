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
   font-size:25px;
  color: #000;
   background-color: #04AA6D;
  padding: 30px 115px;
  text-decoration: none;
}


li a:hover:not(.active) {
  background-color: #555;
  font-size:25px;
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
  <a href="Aboutus">About us</a>
    <a href="Contactus">Contact us</a>
    <h3 style="color:white" align="center">Welcome Customer ${User.userID}</h3>
  <div class="topnav-right">
  <a class="active" href="/dd_pos/Customer">Home</a>
    <a class="active" href="index">Logout</a>
  </div>
</div>
<div class="img">
<div style="margin-left:0%;padding:1px 16px;height:1000px">
<ul>
<li><a href="CustAddfood">Add Food items to cart</a><li>
  <li><a href="viewcartitems">View food items from cart</a></li>
 
  <li><a href="confirmOrder">Confirm Order </a></li>
    <li><a href="Forgotpassword">Change Password</a></li>
</ul>
<div class="img">
<div style="margin-left:25%;padding:1px 16px;height:1000px">
<table border="2" width="70%" cellpadding="2" align="center" style="font-size:28px; background-color:white">


		<tr>
			
			
			<td rowspan=7 width="650"><h2></h2>
				<table border="2" width="70%" cellpadding="2">
				<tr><th>CartId</th><th>foodID</th><th>userID</th><th>Type</th><th>Quantity</th><th>cost</th><th>Order Date</th><th>Edit</th><th>Delete</th></tr> 
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
		
		



</body>
</html>
