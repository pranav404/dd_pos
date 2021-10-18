<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>
change status of ${orderid}
</h1>
<form method = "post" action = "/dd_pos/statchanged">
<input type = "Hidden" name = "orderid" value = ${orderid}>
<input type = "text" name=  "status" placeholder = "orderstatus" required>
<input type = "submit" value = "Change status">
</form>
</body>
</html>