<%@page import="com.grownited.bean.CategoryBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Category</title>
</head>
<body>
<h3>List Category</h3>

<table border="1">
 <%
	List<CategoryBean> list =  (List<CategoryBean>)request.getAttribute("list");
 %>
	<tr>
		<th>CategoryId</th>
		<th>CategoryName</th>
		<th>Deleted?</th>
		<th>Action</th>
	</tr>
<%for(CategoryBean cb:list){ %>
	<tr>
		<td> <%=cb.getCategoryId()%> </td>
		<td> <%=cb.getCategoryName()%> </td>
		<td> <%=cb.getDeleted()%> </td>
		<td><a href="deletecategory/<%=cb.getCategoryId()%>">Delete</a>
		<a href="viewcategory/<%=cb.getCategoryId()%>">view</a></td>
	</tr>
	<%} %>

</table>

<a href="newcategory">New Category</a>
</body>
</html>