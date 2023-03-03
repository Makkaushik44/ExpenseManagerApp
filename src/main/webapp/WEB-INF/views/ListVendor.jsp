<%@page import="java.util.List"%>
<%@page import="com.grownited.bean.VendorBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Vendor</title>
</head>
<body>
<table border="1">
 <%
	List<VendorBean> list =  (List<VendorBean>)request.getAttribute("list");
 %>
	<tr>
		<th>VendorId</th>
		<th>VendorName</th>
		<th>Deleted?</th>
		<th>Action</th>
	</tr>
<%for(VendorBean vb:list){ %>
	<tr>
		<td> <%=vb.getVendorId()%> </td>
		<td> <%=vb.getVendorName()%> </td>
		<td> <%=vb.getDeleted()%> </td>
		<td><a href="deletevendor/<%=vb.getVendorId()%>">Delete</a></td>
	</tr>
	<%} %>

</table>

</body>
</html>