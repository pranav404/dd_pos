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
  <div class="topnav-right">
  <a class="active" href="Admin">Home</a>
    <a class="active" href="index">Logout</a>
  </div>
</div>
<table cellspacing="20" cellpadding="20" border="3"
		style="border-collapse: collapse" height="600">

		<tr>
			<td><a href="Addfood">Add Food items to cart</a></td>
			<td rowspan=7 width="650" align="center"><h2>Please Select the Food you want!</h2>
				<table border="2" width="70%" cellpadding="2">
<form action="saveaddeditem" method = "post">
<table>
  <tr>
    <td>Userid</td>
    <td><input type = "text" name = "userid"></td>
  </tr>
<tr>
<td>
  <label for="Type">Pizza Type:</label></td><td>
  <select id="Type" name="Type">
	  
 <c:forEach  var="food"  items="${list}">
        <option value="${food.foodid }+${food.name}+${food.type}+${food.price}">${food.name} ${food.type}, ${food.foodsize} price per peice = ${food.price} </option>
    </c:forEach>
  </select></td> 
  </tr>
  
  <tr>    
          <td>Quantity:</td>    
          <td><input type ="number" name="quantity" /></td>  
         </tr>
         <tr>
         
         <tr>
        <td>Order date</td>
        
         <td><input type = "date" name = "orderdate" ></td>
         </tr>




<tr><td><input type ="submit" value="submit" align="center"></td></tr>

			

</table>
<tr>
			
		<tr>
			<td> <a href="viewcartitems">View food items from cart</a></td></br>
		</tr>
		</br>
		<tr>

			 <td><a href="Adddelfooddetails">Add/Delete food details</a></td></br>
		</tr>
		</br>
		<tr>
			 <td><a href="modifycartdetails">Modify cart details</a></td></tr></br>

			 <td><a href="modifycartdetails">Modify cart details</a></td></tr></br>

			
		</tr>
		</br>
		<tr>
			<td><a href="confirmOrder">Confirm Order </a></td></br>
		</tr>
		
		</br>
		<tr>
		<td><a href="Forgotpassword">Change Password</a></td></br>
		</tr>

</form>


</body>
</html>
