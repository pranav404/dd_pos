<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<body>
<form method="post">
<style>
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
    <h6>Welcome User ${User.userID}</h6>
  </div>
		<table cellpadding="10" cellspacing="8" bgcolor="white" align="right">
			<tr>
				<th colspan="5" bgcolor=#D3D3D3 align="left">Change Password</th>
			</tr>
			<tr>
				<td>Username :</td>
				<td><input path="Username" /></td>
			</tr>
			<tr>
				<td>New Password:</td>
				<td><input path="Password" /></td>
			</tr>
			<td><input type="submit" value="Update" /></td>
			</tr>
		</table></div>
				<p style="position: fixed; bottom: 0; ">

			<a href="Aboutus">About us</a> <a href="Contactus">Contact
				us</a>
		</p>
</form>	</body>
