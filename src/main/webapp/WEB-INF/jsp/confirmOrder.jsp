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
<script type="text/javascript">
		function validate() {
			var number = document.c4.number.value;
			var validfrom = document.c4.validfrom.value;
			var validto = document.c4.validto.value;
			var Balance = document.c4.Balance.value;
			
			
			var s = false;
			if (number == "" ) {
				document.getElementById("numberlocation").innerHTML = "Please enter the Credit Card Number";
				s = false;
			} else {
				document.getElementById("numberlocation").innerHTML = "";
				s = true;
			}
			if (validfrom == "") {
				document.getElementById("validfromlocation").innerHTML = "Validfrom is mandatory";
				s = false;
			} else {
				document.getElementById("validfromlocation").innerHTML = "";
				s = true;
			}
			if (validto == "") {
				document.getElementById("validtolocation").innerHTML = "Validto is mandatory";
				s = false;
			} else {
				document.getElementById("validtolocation").innerHTML = "";
				s = true;
			}
			if (Balance == "") {
				document.getElementById("balancelocation").innerHTML = "Please enter the balance";
				s = false;
			} else {
				document.getElementById("balancelocation").innerHTML = "";
				s = true;
			}
			return s;
		}
	</script>
	

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


	<h4>Total cost = ${total}</h4>
	
<form name="c4" method = "post" action = "payment" onsubmit="return validate()">
<center>

			<table border="2" width="70%" cellpadding="2" align="center" style="font-size:28px; background-color:white">
<br><tr><td>

Card Number:</td><td><input type="text" name="number" placeholder="Card Number" style="width: 300; height: 30" />
<span id="numberlocation"style="color: red; font-size: 20px"></span> </td></tr>
<br>
<br>
<tr><td>Valid From:</td><td><input type="text" name="validfrom" placeholder="Valid From" style="width: 300; height: 30" /> 
<span id="validfromlocation"style="color: red; font-size: 20px"></span></td></tr>
<tr><td>Valid To:</td><td><input type="text" name="validto" placeholder="Valid to"  style="width: 300; height: 30" />
<span id="validtolocation"style="color: red; font-size: 20px"></span> </td></tr>
<tr> <td>Balance</td><td><input type="number" name="Balance" placeholder="Balance"  style="width: 300; height: 30" />
<span id="balancelocation"style="color: red; font-size: 20px"></span> </td></tr>
<br>
<br>
<tr><td colspan="2" align="center">
<input type="submit" value="PAY" name="pay" placeholder="PAY" required style="width: 300; height: 30" /> </td></tr>
</table>
</center>
</form>					
</body>
</html>
