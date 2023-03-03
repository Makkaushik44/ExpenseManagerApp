<%@page import="com.grownited.bean.SubCategoryBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SubListCategories</title>
</head>
<body>
<table border="1">
 <%
	List<SubCategoryBean> sublist = (List<SubCategoryBean>)request.getAttribute("sublist");
 %>
	<tr>
		<th>CategoryId</th>
		<th>SubcategoryId</th>
		<th>SubCategoryName</th>
		<th>Deleted?</th>
		<th>Action</th>
	</tr>
<%for(SubCategoryBean scb:sublist){ %>
	<tr>
		<td> <%=scb.getCategoryId()%> </td>
		<td> <%=scb.getSubcategoryId()%> </td>
		<td> <%=scb.getSubcategoryName()%> </td>
		<td> <%=scb.getDeleted()%> </td>
		<td> <a href="deletesubcategory/<%=scb.getSubcategoryId()%>">delete</a></td>
	</tr>
	<%} %>

</table>


</body>
</html>