<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login page</title>
</head>
<body>
<form  action="authentication" method="post">
         <h2>Login</h2>
        Email :<input type="email" name="email"><br><br>
		Password : <input type="password" name="password"><br><br>
		<input type="submit" value="LogIn"/>
		
</form>
  ${error}
<br><br>
<a href="signup">Signup</a> | <a href="forgetpassword">ForgetPassword?</a>

</body>
</html>