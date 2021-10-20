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
var name=document.f3.Name.value;
var Street=document.f3.Street.value;
var mobileNo=document.f3.mobileNo.value;
var City=document.f3.City.value;
var State=document.f3.State.value;
var Pincode=document.f3.Pincode.value;
var s=false;  
var s2=false;
var s3=false;
var s4=false;
var s5=false;
var s6=false;
if(name==""){  
document.getElementById("namelocation").innerHTML=  
"Please enter the your name";  
s=false;
}else{ 
	document.getElementById("namelocation").innerHTML=  
		"";  
s=true;
}
if(Street==""){  
	document.getElementById("Streetlocation").innerHTML=  
	"Please enter the Street";  
	s2=false;
	}else{
		document.getElementById("Streetlocation").innerHTML=  
			"";
	s2=true;
	}
if(mobileNo==""){  
	document.getElementById("mobileNolocation").innerHTML=  
	"Please enter the mobileNo";  
	s3=false;
	}else{
		document.getElementById("mobileNolocation").innerHTML=  
			"";  
	s3=true;
	}
if(City==""){  
	document.getElementById("Citylocation").innerHTML=  
	"Please enter the City";  
	s4=false;
	}else{ 
		document.getElementById("Citylocation").innerHTML=  
			"";
	s4=true;
	}
if(State==""){  
	document.getElementById("Statelocation").innerHTML=  
	"Please enter the State";  
	s5=false;
	}else{ 
		document.getElementById("Statelocation").innerHTML=  
			""; 
	s5=true;
	}
if(Pincode==""){  
	document.getElementById("Pincodelocation").innerHTML=  
	"Please enter the Pincode";  
	s6=false;
	}else{ 
		document.getElementById("Pincodelocation").innerHTML=  
			""; 
	s6=true;
	}
return s&&s2&&s3&&s4&&s5&&s6;  
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
Edit Pizza Store
</h1>
	<form:form name="f3" method="POST" action="/dd_pos/saveeditpizza" modelAttribute="editStore" onsubmit="return validate()">
<table border="2" width="70%" cellpadding="2" align="center" style="font-size:28px; background-color:white">
						<tr>  
        			<td></td>    
         			<td><form:hidden  path="storeID" /></td>  
         			</tr>
						<tr>
							<td>Name :</td>
							<td><form:input path="Name"/>
							<span id="namelocation" style="color:red; font-size:20px"></span></td>
						</tr>
						<tr>
							<td>Street :</td>
							<td><form:input path="Street" />
							<span id="Streetlocation" style="color:red; font-size:20px"></span></td>
						</tr>
						<tr>
							<td>MobileNo :</td>
							<td><form:input path="mobileNo" />
							<span id="mobileNolocation" style="color:red; font-size:20px"></span></td>
						</tr>
						<tr>
							<td>City :</td>
							<td><form:input path="City" />
							<span id="Citylocation" style="color:red; font-size:20px"></span></td>
						</tr>
						<tr>
							<td>State :</td>
							<td><form:input path="State" />
							<span id="Statelocation" style="color:red; font-size:20px"></span></td>
						</tr>
						<tr>
							<td>Pincode :</td>
							<td><form:input path="Pincode" />
							<span id="Pincodelocation" style="color:red; font-size:20px"></span></td>
						</tr>
						<tr >
							<td colspan="2" align="center"><input type="submit" value="Edit Save" /></td>
						</tr>
					</table>
					</td>
					
					</form:form>

		</div>
</body>
</html>
