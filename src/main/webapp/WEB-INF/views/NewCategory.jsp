<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>NewCategory</title>
</head>
<body>


 <form action="savecategory" method="post">
		CategoryName : <input type="text" name="categoryName"/>
		
		<br><br>
		<input type="submit" value="Save Category"/><br><br>
		<input type="button" value="Go back!" onclick="history.back()">
	
	</form>
	<br>
	<a href="listcategories">List Category</a><br><br>
	<a href="newsubcategory">New SubCategory</a> <br><br>
	<a href="sublistcategories">Sub List Categories</a><br><br>
	


</body>
</html>