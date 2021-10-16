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
			<td><a href="Addfood.jsp">Add Food items to cart</a></td>
			<td rowspan=7 width="650" align="center"><h2>Please Select the Pizza you want!</h2>
				<table border="2" width="70%" cellpadding="2">
<form action=post>
<table>
<tr>
<td>
  <label for="Type">Pizza Type:</label></td><td>
  <select id="Type" name="Type">
	  
 <c:forEach  var="food"  items="${list}">
        <option value="${food.name}+${food.type}">${food.name} ${food.type}, ${food.foodsize}  </option>
    </c:forEach>
  </select></td> 
  </tr>
  
  <tr>    
          <td>Quantity:</td>    
          <td><input type ="text" name="Quantity" /></td>  
         </tr>
  
 <tr><td><p>Size and Price:</p>
  <input type="radio" id="small" name="size_price" value="small">
  <label for="small">small</label><br>
  <input type="radio" id="medium" name="size_price" value="medium">
  <label for="medium">medium</label><br>
  <input type="radio" id="Large" name="size_price" value="Large">
  <label for="Large">Large</label></td></tr>



<tr><td><input type ="submit" value="submit" align="center"></td></tr>

			

</table>
<tr>
			
		<tr>
			<td> <a href="viewfooditems.jsp">View food items from cart</a></td></br>
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

</form>


</body>
</html>
