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
  <a href="Aboutus.jsp">About us</a>
    <a href="Contactus.jsp">Contact us</a>
  <div class="topnav-right">
  <a class="active" href="Admin.jsp">Home</a>
    <a class="active" href="index.jsp">Logout</a>
  </div>
</div>
<table cellspacing="20" cellpadding="20" border="3"
		style="border-collapse: collapse" height="600">
		<tr>
			
			<td> <a href="CustAddfood.jsp">Add Food items to cart</a></td></br>
			<td rowspan=7 width="650"><h2></h2>
				<table border="2" width="70%" cellpadding="2">
				<tr><th>CartId</th><th>Type</th><th>Quantity</th><th>Size And Price</th><th>Order Date</th><th>Edit</th><th>Delete</th></tr> 
				<c:forEach var="Cart" items="${list}">   
   <tr>  
   <td>${Cart.id}</td>  
   <td>${Cart.Type}</td>  
   <td>${Cart.Quantity}</td>
   <td>${Cart.SizeAndPrice } </td> 
   <td>${Cart.OrderDate}</td> 
     
   <td><a href="editCart/${Cart.id}">Edit</a></td>  
   <td><a href="deleteCart/${Cart.id}">Delete</a></td>  
   </tr>  
   </c:forEach>
				
				

				
		</table>
		
		<tr>
			<td><a href="ViewCartItems.jsp">View food items from cart</a></td></br>
		</tr>
		</br>
		
		<tr>
			 <td><a href="Adddelfooddetails.jsp">Add/Delete food details</a></td></br>
		</tr>
		</br>
		<tr>
			 <td><a href="modifycartdetails.jsp">Modify cart details</a></td></tr></br>
			
		</tr>
		</br>
		<tr>
			<td><a href="confirmOrder.jsp">Confirm Order </a></td></br>
		</tr>
		
		</br>
		<tr>
		<td><a href="Forgotpassword.jsp">Change Password</a></td></br>
		</tr>



</body>
</html>
