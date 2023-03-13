<%@page import="java.util.List"%>
<%@page import="com.grownited.bean.IncomeBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	List<IncomeBean> incomelist =  (List<IncomeBean>)request.getAttribute("incomelist");
 %>
 <table border="1">
	<tr>
		<th>Title</th>
		<th>Date</th>
		<th>AccountTypeId</th>
		<th>StatusId</th>
		<th>amount</th>
		<th>description</th>
		

</tr>
<%for(IncomeBean ib: incomelist){ %>
	<tr>
		<td> <%=ib.getTitle()%> </td>
		<td> <%=ib.getDate()%> </td>
		<td> <%=ib.getAccountTypeId()%> </td>
		<td> <%=ib.getStatusId()%> </td>
		<td> <%=ib.getAmount()%> </td>
		<td> <%=ib.getDescription()%> </td>

		
	</tr>
	<%} %> 

</table><br><br>


</body>
</html>