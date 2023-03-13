<%@page import="com.grownited.bean.ExpenseBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ExpenseList</title>
</head>
<body>
<h2>Expense List</h2>
<%
	List<ExpenseBean> expenselist =  (List<ExpenseBean>)request.getAttribute("expenselist");
 %>
 <table border="1">
	<tr>
		<th>Title</th>
		<th>CategoryId</th>
		<th>SubCategoryId</th>
		<th>VendorId</th>
		<th>AccountTypeId</th>
		<th>StatusId</th>
		<th>amount</th>
		<th>Date</th>
		<th>description</th>
		
		
		
		

</tr>
<%for(ExpenseBean eb:expenselist){ %>
	<tr>
		<td> <%=eb.getTitle()%> </td>
		<td> <%=eb.getCategoryId()%> </td>
		<td> <%=eb.getSubCategoryId()%> </td>
		<td> <%=eb.getVendorId()%> </td>
		<td> <%=eb.getAccountTypeId()%> </td>
		<td> <%=eb.getStatusId()%> </td>
		<td> <%=eb.getAmount()%> </td>
		<td> <%=eb.getDate()%> </td>
		<td> <%=eb.getDescription()%> </td>
		
		
		
		
		
		
	</tr>
	<%} %> 

</table><br><br>

</body>
</html>