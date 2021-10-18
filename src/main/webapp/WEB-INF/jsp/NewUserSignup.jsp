<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign up</title>
</head>

<form method="post" action="save">
<style>
input[type="text"]:-ms-input-placeholder {
	text-align: center;
}

input[type="password"]:-ms-input-placeholder {
	text-align: center;
}

.img {
	background-image:
		url('https://just-eat-prod-sg-res.cloudinary.com/image/upload/c_fill,d_au:cuisines:pizza-9.jpg,f_auto,q_auto,w_500/v1/au/restaurants/3465069.jpg');
	height: 100%;
	background-repeat: no-repeat;
	background-size: cover;
}
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
</style>
<div class="img">
<div class="topnav">

  <a href="Aboutus">About us</a>
    <a href="Contactus">Contact us</a>
  </div>
    <table bgcolor="white" align="right" >
				<tr>
					<th colspan="5" bgcolor=#D3D3D3 align="left" style="font-size: 30">Register</th>
				</tr>
     <tr>
     <td><b>Firstname :</b> </td>

     <td><input type= "text" name="Firstname"  placeholder="Firstname"
							required style="width: 200; height: 30" required="required" /></td>

     </tr>
      <tr>
     <td><b>Lastname :</b> </td>

     <td><input type= "text" name="Lastname"  placeholder="Lastname"
							required style="width: 200; height: 30" required="required" /> </td>
							

     </tr>
     <td><b>Password :</b> </td>

     <td><input type= "password" name="password"  placeholder="Enter Password"
							required style="width: 200; height: 30" required="required" /> </td>
							

     </tr>
     <tr>
     <td><b>Date Of Birth : </b></td>

     <td><input type="date" id="birthday" name="dob" required style="width: 200;height:30" required="required"> </td>
							

     </tr>
     <tr>
     <td>
     <b>Gender:</b> </td>
      <td>Male <input type="radio" name="gender" value="male" checked="checked"/></br>
      Female <input type="radio" name="gender" value="female"/> </td>
     
     </tr>
     
     <tr>
     
     <td><b>Street: </b></td>

     <td><input type= "text" name="street"  placeholder="Street"
							required style="width: 200; height: 30" required="required" /> </td>
							

     </tr>
     
     <tr>
     <td><b>Location: </b></td>

     <td><input type= "text" name="loc"  placeholder="Location"
							required style="width: 200; height: 30" required="required" /> </td>
							

     </tr>
     
     <tr>
     
     <td><b>City:</b> </td>

     <td><input type= "text" name="city"  placeholder="City"
							required style="width: 200; height: 30" required="required" /> </td>
							

     </tr>
     
     <tr>
     <td><b>State:</b> </td>

     <td><input type= "text" name="state"  placeholder="State"
							required style="width: 200; height: 30" required="required" /> </td>
							

     </tr>
     
     <tr>
     <td><b>PinCode: </b></td>

     <td><input type= "text" name="pin"  placeholder="Pincode"
							required style="width: 200; height: 30" required="required" /> </td>
     </tr>
     
      <tr>
     <td><b>MobileNo: </b></td>

     <td><input type= "text" name="mob"  placeholder="MobileNo"
							required style="width: 200; height: 30" required="required" /> </td>
     </tr>
     
     <tr>
     <td><b>EmailId:</b> </td>

     <td><input type= "text" name="mail"  placeholder="EmailId"
							required style="width: 200; height: 30" required="required" /> </td>
     </tr>
     
     <tr><td>
     <input type="submit" value="Sign Up" required style="width: 200; height: 30 ;text-align:center;"> </td>
	 </tr>
</table>
</div>
</form>
		
	
</body>

</html>
