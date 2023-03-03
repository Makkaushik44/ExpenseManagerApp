<%@page import="com.grownited.bean.AccountTypeBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ListAccountType</title>
</head>
<body>
<table border="1">
 <%
	List<AccountTypeBean> list =  (List<AccountTypeBean>)request.getAttribute("list");
 %>
	<tr>
		<th>AccountTypeId</th>
		<th>AccountTypeName</th>

</tr>
<%for(AccountTypeBean atb:list){ %>
	<tr>
		<td> <%=atb.getAccountTypeId()%> </td>
		<td> <%=atb.getAccountTypeName()%> </td>
		
		
	</tr>
	<%} %> 

</table><br><br>
<a href="accounttype">Add Another Account type</a>

</body>
</html>