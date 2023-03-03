<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forget Password</title>
</head>
<body>
<form action="sendotpforgetpassword" method="post">
       Email :<input type="email" name="email"><br><br>
		
		<input type="submit" value="Send OTP"/><br><br>
		</form>
		${error}
		<a href="login">LogIn</a>

</body>
</html>