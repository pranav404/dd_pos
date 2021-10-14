<html>
<body>
	<form method="post" action="login">
		<style>
input[type="text"]:-ms-input-placeholder {
	text-align: center;
}

input[type="password"]:-ms-input-placeholder {
	text-align: center;
}

div {
	background-image:
		url('https://just-eat-prod-sg-res.cloudinary.com/image/upload/c_fill,d_au:cuisines:pizza-9.jpg,f_auto,q_auto,w_500/v1/au/restaurants/3465069.jpg');
	height: 100%;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
		<div>
			<table cellpadding="10" cellspacing="8" bgcolor="white" align="right">
				<tr>
					<th colspan="5" bgcolor=#D3D3D3 align="left" font-size=>Login</th>
				</tr>
				<tbody>
					<tr>
						<td><input type="text" name="username" placeholder="Username"
							required style="width: 300; height: 30" /></td>
					</tr>
					<tr>
						<td><input type="password" name="password"
							placeholder="Password" required style="width: 300; height: 30" /></td>
					</tr>
					<tr>
						<td><input type="checkbox"
							name="Remember me on this computer">Remember me on this
							computer <input type="submit" value="Login" bgcolor=#008080 /></td>
					</tr>
					<tr>
						<td>New User? <a href="NewUserSignup.jsp"> Click here to
								register</a>
						</td>
					</tr>
					<tr>
						<td>Forgot your password? <a href="Forgotpassword.jsp">Click
								here to reset it</a></td>
					</tr>
				</tbody>

			</table>

		</div>
		<a href="Aboutus.jsp">About us</a> <a href="Contactus.jsp">Contact
			us</a>
	</form>
</body>
</html>
