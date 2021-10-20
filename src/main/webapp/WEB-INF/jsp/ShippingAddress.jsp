<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
  padding:30px 115px;
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
			var orderdate = document.g1.orderdate.value;
			var street = document.g1.street.value;
			var mobileno = document.g1.mobileno.value;
			var city = document.g1.city.value;
			var state = document.g1.state.value;
			var pincode = document.g1.pincode.value;
			var s = false;
			var s2,s3,s4,s5,s6;
			if (orderdate == "") {
				document.getElementById("orderdatelocation").innerHTML = "Please enter the order date";
				s = false;
			} else {
				document.getElementById("orderdatelocation").innerHTML = "";
				s = true;
			}
			if (street == "") {
				document.getElementById("streetlocation").innerHTML = "Please enter the Street";
				s2 = false;
			} else {
				document.getElementById("streetlocation").innerHTML = "";
				s2 = true;
			}
			
			if (city == "") {
				document.getElementById("citylocation").innerHTML = "Please enter the City";
				s3 = false;
			} else {
				document.getElementById("citylocation").innerHTML = "";
				s3 = true;
			}
			if (state == "") {
				document.getElementById("statelocation").innerHTML = "Please enter the State";
				s4 = false;
			} else {
				document.getElementById("statelocation").innerHTML = "";
				s4 = true;
			}
			if (pincode == "") {
				document.getElementById("pincodelocation").innerHTML = "Please enter the Pincode";
				s5 = false;
			} else {
				document.getElementById("pincodelocation").innerHTML = "";
				
				s5 = true;
			}
			if (mobileno == "") {
				document.getElementById("mobilenolocation").innerHTML = "Please enter the mobile number";
				s6 = false;
			} else {
				document.getElementById("mobilenolocation").innerHTML = "";
				s6 = true;
			}
			return s&&s2&&s3&&s4&&s5&&s6;
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
</style>
</head>
<body>

<div class="img">
<div style="margin-left:0%;padding:1px 16px;height:1000px">
<ul>
<li><a href="Addfood">Add Food items to cart</a><li>
  <li><a href="viewcartitems">View food items from cart</a></li>

  <li><a href="confirmOrder">Confirm Order </a></li>
    <li><a href="Forgotpassword">Change Password</a></li>
</ul>
<div class="img">
<div style="margin-left:25%;padding:1px 16px;height:1000px">
<table border="2" width="50%" cellpadding="2" align="center" style="font-size:20px; background-color:white">



		<tr>
			
			<td rowspan=7 width="650" align="center"><h2>Enter your Shipping Address</h2>
				<table border="2" width="70%" cellpadding="2">
<form name="g1" action="ordership" method = "post" onsubmit="return validate()">
<table>
  
  
  
<tr>

<tr>
     
     <td><b>Street: </b></td>

     <td><input type= "text" name="street"  placeholder="Street"
							 /> 
							 <span id="streetlocation"style="color: red; font-size: 20px"></span></td>
							

     </tr>
     
     <tr>
     <td><b>Order date: </b></td>

     <td><input type= "date" name="orderdate"
							  /> 
							 <span id="orderdatelocation"style="color: red; font-size: 20px"></span></td>
							

     </tr>
     
     <tr>
     
     <td><b>City:</b> </td>

     <td><input type= "text" name="city"  placeholder="City"
							 />
							 <span id="citylocation"style="color: red; font-size: 20px"></span> </td>
							

     </tr>
     
     <tr>
     <td><b>State:</b> </td>

     <td><input type= "text" name="state"  placeholder="State"
							  />
							<span id="statelocation"style="color: red; font-size: 20px"></span> </td>
							

     </tr>
     
     <tr>
     <td><b>PinCode: </b></td>

     <td><input type= "text" name="pincode"  placeholder="Pincode"
							 />
							<span id="pincodelocation"style="color: red; font-size: 20px"></span> </td>
     </tr>
     
      <tr>
     <td><b>MobileNo: </b></td>

     <td><input type= "text" name="mobileno"  placeholder="MobileNo"
							 />
							<span id="mobilenolocation"style="color: red; font-size: 20px"></span> </td>
     </tr>
     
<tr><td><input type ="submit" value="Proceed Pay" align="center"> </td></tr>

			

</table>

		


</form>


</body>
</html>

