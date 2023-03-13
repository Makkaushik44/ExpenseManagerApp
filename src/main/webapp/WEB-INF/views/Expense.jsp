<%@page import="com.grownited.bean.VendorBean"%>
<%@page import="com.grownited.bean.AccountTypeBean"%>
<%@page import="com.grownited.bean.StatusBean"%>
<%@page import="com.grownited.bean.SubCategoryBean"%>
<%@page import="com.grownited.bean.CategoryBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expenses</title>
</head>
<body>
<%
		List<CategoryBean> list = (List<CategoryBean>) request.getAttribute("list");
        List<SubCategoryBean> sublist = (List<SubCategoryBean>) request.getAttribute("sublist");
        List<StatusBean> statusList = (List<StatusBean>) request.getAttribute("statusList");
        List<AccountTypeBean> aclist = (List<AccountTypeBean>) request.getAttribute("aclist");
        List<VendorBean> vendorlist = (List<VendorBean>) request.getAttribute("vendorlist");
	%>
	
<form action="saveexpense" method="post" >
		 
Title:<input type="text" name="title"><br><br>
Date:<input type="date" name="Date"><br><br>

 Category <select name="categoryId">

			<%
				for (CategoryBean cb : list) { 
				%>
			<option value="<%=cb.getCategoryId()%>">
				<%=cb.getCategoryName()%></option>
			<%
				}
			%>
		</select><br><br>
		
SubCategoryName:<select name="subCategoryId">

			<%
				for (SubCategoryBean scb : sublist) {
			%>
			<option value="<%=scb.getSubcategoryId()%>">
				<%=scb.getSubcategoryName()%></option>
			<%
				}
			%>
		</select><br><br>
Vendor :<select name="vendorId">

			<%
				for (VendorBean vb : vendorlist) {
			%>
			<option value="<%=vb.getVendorId()%>">
				<%=vb.getVendorName()%></option>
			<%
				}
			%>
		</select><br><br>
Enter Amount:<input type="number" name="amount"><br><br>
Status :<select name="statusId">

			<%
				for (StatusBean sb: statusList) {
			%>
			<option value="<%=sb.getStatusId()%>">
				<%=sb.getStatusName()%></option>
			<%
				}
			%>
		</select><br><br>

		
AccountType:<select name="accountTypeId">

			<%
				for (AccountTypeBean atb: aclist) {
			%>
			<option value="<%=atb.getAccountTypeId()%>">
				<%=atb.getAccountTypeName()%></option>
			<%
				}
			%>
		</select><br><br>
Description: <textarea name="description" rows="4" cols="40"></textarea><br>
		

			
		
		<input type="submit" value="Save Expense"/>
	</form>


</body>
</html>