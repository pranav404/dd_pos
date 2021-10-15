<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
  <a class="active" href="Customer">Home</a>
    <a class="active" href="index">Logout</a>
  </div>
</div>
<table cellspacing="20" cellpadding="20" border="3"
		style="border-collapse: collapse" height="600">

		<tr>
			<td><a href="Addfood">Add Food items to cart</a></td>
			<td rowspan=7 width="650"><h2>Please Select the Pizza you want!</h2>
				<table border="2" width="70%" cellpadding="2">
<form action=>
<table>
<tr>
<td>
  <label for="flavour">Pizza Flavour:</label>
  <select id="flavour" name="flavour">
  <option value="Select Pizza Flavour">Select Pizza Flavour</option>
    <option value="Margherita">Margherita</option>
   <option value="Double Cheese Margherita">Double Cheese Margherita</option>
    <option value="Farm House">Farm House</option>
    <option value="Peppy Panner">Peppy Panner</option>
  </select></td>
  </tr>
 <tr><td><p>Size and Price:</p>
  <input type="radio" id="small" name="size_price" value="small">
  <label for="small">small</label><br>
  <input type="radio" id="medium" name="size_price value="medium">
  <label for="medium">medium</label><br>
  <input type="radio" id="Large" name="size_price" value="Large">
  <label for="Large">Large</label></td></tr>

<tr> <td><p>Add Ons:</p>


  <input type="checkbox" id="add-on1" name="add-on1" value="Extra Cheese">
  <label for="add-on1"> Extra Cheese </label>
  <input type="checkbox" id="add-on2" name="add-on2" value="Black Olives">
  <label for="add-on2"> Black Olives</label><br>
  <input type="checkbox" id="add-on3" name="add-on3" value="Extra Meat">
  <label for="add-on3"> Extra Meat</label>
  <input type="checkbox" id="add-on4" name="add-on4" value="Onions">
  <label for="add-on4"> Onions</label><br>
  <input type="checkbox" id="add-on5" name="add-on5" value="Mushroom">
  <label for="add-on5"> Mushroom</label>
  <input type="checkbox" id="add-on6" name="add-on6" value="Sausage">
  <label for="add-on6"> Sausage</label><br></td></tr>
  
 <tr> <td> <p>Choose:</p>
  <input type="radio" id="Dine In" name="choose" value="Dine In">
  <label for="Dine In">Dine In</label><br>
  <input type="radio" id="Take Away" name="size_price value="Take Away">
  <label for="Take Away">Take Away</label><br></td></tr>

<tr><td><input type ="submit" value="submit" align="center"></td></tr>

			

</table>
<tr>
			
		<tr>
			<td> <a href="viewfooditems">View food items from cart</a></td></br>
		</tr>
		</br>
		<tr>
			 <td><a href="Adddelfooddetails">Add/Delete food details</a></td></br>
		</tr>
		</br>
		<tr>
			 <td><a href="modifycartdeatils">Modify cart details</a></td></tr></br>
			
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