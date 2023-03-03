<%@page import="java.util.List"%>
<%@page import="com.grownited.bean.StatusBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Status</title>
</head>
<body>
<table border="1">
 <%
	List<StatusBean> list =  (List<StatusBean>)request.getAttribute("list");
 %>
	<tr>
		<th>CategoryId</th>
		<th>CategoryName</th>

</tr>
<%for(StatusBean sb:list){ %>
	<tr>
		<td> <%=sb.getStatusId()%> </td>
		<td> <%=sb.getStatusName()%> </td>
		
		
	</tr>
	<%} %> 

</table><br><br>
 <input type="button" value="Go AdminDashboard" onclick="location.href='http://localhost:9944/admindashboard'">
<input type="button" value="Go back!" onclick="history.back()"><br>
<a href="status">add another status</a>


</body>
</html>