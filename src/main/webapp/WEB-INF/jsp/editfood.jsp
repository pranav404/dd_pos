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
	font-size: 25px;
	color: #000;
	background-color: #04AA6D;
	padding: 25px 40px;
	text-decoration: none;
}

li a:hover:not(.active) {
	background-color: #555;
	font-size: 25px;
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
<script type="text/javascript">  
function validate(){  
var name=document.f2.Name.value;
var type=document.f2.Type.value;
var quantity=document.f2.Quantity.value;
var size=document.f2.Foodsize.value;
var price=document.f2.price.value;
var s=false;  
if(name==""){  
document.getElementById("namelocation").innerHTML=  
"Please enter the your name";  
s=false;
}else{ 
	document.getElementById("namelocation").innerHTML=  
		""; 
s=true;
}
if(type==""){  
	document.getElementById("typelocation").innerHTML=  
	"Please enter the type";  
	s=false;
	}else{ 
		document.getElementById("typelocation").innerHTML=  
			""; 
	s=true;
	}
if(quantity==""){  
	document.getElementById("quantitylocation").innerHTML=  
	"Please enter the quantity";  
	s=false;
	}else{ 
		document.getElementById("quantitylocation").innerHTML=  
			"";
	s=true;
	}
if(size==""){  
	document.getElementById("sizelocation").innerHTML=  
	"Please enter the size";  
	s=false;
	}else{ 
		document.getElementById("sizelocation").innerHTML=  
			"";
	s=true;
	}
if(price==""){  
	document.getElementById("pricelocation").innerHTML=  
	"Please enter the price";  
	s=false;
	}else{
		document.getElementById("pricelocation").innerHTML=  
			""; 
	s=true;
	}
return s;  
}  
</script>
</head>
<body>

	<div class="topnav">
		<a href="Aboutus">About us</a> <a href="Contactus">Contact us</a>
		<h3 style="color: white" align="center">Welcome Admin
			${User.userID}</h3>
		<div class="topnav-right">
			<a class="active" href="Admin">Home</a> <a class="active"
				href="logout">Logout</a>
		</div>
	</div>

	<ul>
		<li><a href="/dd_pos/Adddelpizza">Add/Delete pizza store details</a></li>
		<li><a href="/dd_pos/viewmodpizza">View/Modify pizza store details</a></li>
		<li><a href="/dd_pos/Adddelfood">Add/Delete food details</a></li>
		<li><a href="/dd_pos/viewmodfood">View/Modify food details</a></li>
		<li><a href="/dd_pos/orderstatus">Change order status</a></li>
		<li><a href="/dd_pos/Forgotpassword">Change Password</a></li>
	</ul>
	<div class="img">
		<div style="margin-left: 25%; padding: 1px 16px; height: 1000px">
<h1 align="center">
Edit Food Item
</h1>
<form:form name="f2" method="POST" action="/dd_pos/saveeditfood" modelAttribute="editfood" onsubmit="return validate()">
<table border="2" width="70%" cellpadding="2" align="center" style="font-size:28px; background-color:white">
						<tr>
							<td></td>
							<td><form:hidden path="foodid" /></td>
						</tr>
						<tr>
							<td>Name :</td>
							<td><form:input path="Name" />
							<span id="namelocation" style="color:red; font-size:20px"></span></td>
						</tr>
						<tr>
							<td>Food Type :</td>
							<td><form:input path="Type" />
							<span id="typelocation" style="color:red;font-size:20px"></span></td>
							
						</tr>
						<tr>
							<td>Order Quantity :</td>
							<td><form:input path="Quantity" />
							<span id="quantitylocation" style="color:red;font-size:20px"></span></td>
						</tr>
						<tr>
						<tr>
							<td>Food Size :</td>
							<td><form:input path="Foodsize" />
							<span id="sizelocation" style="color:red;font-size:20px"></span></td>
						</tr>
						<tr>
							<td>Price :</td>
							<td><form:input path="price"/>
							<span id="pricelocation" style="color:red;font-size:20px"></span></td>
						</tr>

						<tr >
							<td colspan="2" align="center"><input type="submit" value="Edit Save" /></td>
						</tr>
					</table> <br />
					</form:form>

		</div>
</body>
</html>
