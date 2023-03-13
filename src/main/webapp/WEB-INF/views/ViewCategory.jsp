<%@page import="com.grownited.bean.CategoryBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Category</title>
</head>
<body>
<h2>View Category</h2>

<%
		CategoryBean categoryBean = (CategoryBean) request.getAttribute("categoryBean");
	%>

categoryId: <%=categoryBean.getCategoryId() %><br>
categroyName:<%=categoryBean.getCategoryName() %><br>
deleted: <%=categoryBean.getDeleted()%><br>

</body>
</html>