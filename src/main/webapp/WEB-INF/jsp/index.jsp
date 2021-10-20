<html>
<body>

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
	<script type="text/javascript">
		function validate() {
			var username = document.f5.username.value;
			var password = document.f5.password.value;
			var s = false;
			if (username == "") {
				document.getElementById("usernamelocation").innerHTML = "Please enter the your username";
				s = false;
			} else {
				s = true;
			}
			if (password == "") {
				document.getElementById("passwordlocation").innerHTML = "Please enter the password";
				s = false;
			} else {
				s = true;
			}
			return s;
		}
	</script>
	<div class="img">
		<div class="topnav">
			<a href="Aboutus">About us</a> <a href="Contactus">Contact us</a>
		</div>
		<form name="f5" method="post" action="login"
			onsubmit="return validate()">
			<table cellpadding="10" cellspacing="8" bgcolor="white" align="right">
				<tr>
					<th colspan="5" bgcolor=#D3D3D3 align="left" font-size=>Login</th>
				</tr>
				<tbody>
					<tr>
						<td><input type="text" name="username" placeholder="Username"
							style="width: 300; height: 30" /> <span id="usernamelocation"
							style="color: red; font-size: 20px"></span></td>
					</tr>
					<tr>
						<td><input type="password" name="password"
							placeholder="Password" style="width: 300; height: 30" /> <span
							id="passwordlocation" style="color: red; font-size: 20px"></span></td>
					</tr>
					<tr>
						<td><input type="checkbox"
							name="Remember me on this computer">Remember me on this
							computer <input type="submit" value="Login" bgcolor=#008080 /></td>
					</tr>
					<tr>
						<td>New User? <a href="NewUserSignup"> Click here to
								register</a>
						</td>
					</tr>
					
				</tbody>

			</table>
	</div>

	</form>
</body>
</html>
