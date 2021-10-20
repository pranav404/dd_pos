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
			
			<td rowspan=7 width="650" align="center"><h2>Please Select the Food you want!</h2>
				<table border="2" width="70%" cellpadding="2">
				<script type="text/javascript">
		function validate() {
			var quantity = document.c1.quantity.value;
			var orderdate = document.c1.orderdate.value;
			
			var s = false;
			var s2 = false;
			if (quantity == "" || quantity == "0") {
				document.getElementById("quantitylocation").innerHTML = "Please enter the quantity";
				s = false;
			} else {
				document.getElementById("quantitylocation").innerHTML = "";
				s = true;
			}
			if (orderdate == "") {
				document.getElementById("orderdatelocation").innerHTML = "Please enter the orderdate";
				s2 = false;
			} else {
				document.getElementById("orderdatelocation").innerHTML = "";
				s2 = true;
			}
			return s&&s2;
		}
	</script>

<form name="c1" action="saveaddeditem" method = "post" onsubmit="return validate()">
<table>
  
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
          <td><input type ="number" name="quantity"   />
          <span id="quantitylocation"style="color: red; font-size: 20px"></span></td>  
         </tr>
         <tr>
         
         <tr>
        <td>Order date</td>
        
         <td><input type = "date" name = "orderdate"  />
         <span id="orderdatelocation"style="color: red; font-size: 20px"></span>
         </td>
         </tr>




<tr><td><input type ="submit" value="submit" align="center"></td></tr>

			

</table>


</form>


</body>
</html>
