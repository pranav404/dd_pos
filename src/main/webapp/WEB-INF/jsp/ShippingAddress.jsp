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
<form action="ordership" method = "post">
<table>
  
  
  
<tr>

<tr>
     
     <td><b>Street: </b></td>

     <td><input type= "text" name="street"  placeholder="Street"
							required style="width: 200; height: 30" /> </td>
							

     </tr>
     
     <tr>
     <td><b>Orderdate: </b></td>

     <td><input type= "date" name="orderdate"
							required style="width: 200; height: 30" /> </td>
							

     </tr>
     
     <tr>
     
     <td><b>City:</b> </td>

     <td><input type= "text" name="city"  placeholder="City"
							required style="width: 200; height: 30" /> </td>
							

     </tr>
     
     <tr>
     <td><b>State:</b> </td>

     <td><input type= "text" name="state"  placeholder="State"
							required style="width: 200; height: 30" /> </td>
							

     </tr>
     
     <tr>
     <td><b>PinCode: </b></td>

     <td><input type= "text" name="pincode"  placeholder="Pincode"
							required style="width: 200; height: 30" /> </td>
     </tr>
     
      <tr>
     <td><b>MobileNo: </b></td>

     <td><input type= "text" name="mobileno"  placeholder="MobileNo"
							required style="width: 200; height: 30" /> </td>
     </tr>
     
<tr><td><input type ="submit" value="Proceed Pay" align="center"> </td></tr>

			

</table>

		


</form>


</body>
</html>
