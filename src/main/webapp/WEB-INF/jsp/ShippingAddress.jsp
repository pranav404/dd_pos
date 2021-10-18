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
</style>
</head>
<body>

<div class="topnav">
  <a href="Aboutus">About us</a>
    <a href="Contactus">Contact us</a>
  <div class="topnav-right">
  <a class="active" href="Admin">Home</a>
    <a class="active" href="logout">Logout</a>
  </div>
</div>
<table cellspacing="20" cellpadding="20" border="3"
		style="border-collapse: collapse" height="600">

		<tr>
			
			<td rowspan=7 width="650" align="center"><h2>Enter your Shipping Address</h2>
				<table border="2" width="70%" cellpadding="2">
<form action="ordership" method = "post">
<table>
  
  <h3>Total cost = ${total}</h3>
  
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

		<tr>
		<td><a href="Forgotpassword">Change Password</a></td></br>
		</tr>


</form>


</body>
</html>
