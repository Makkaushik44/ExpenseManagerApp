<%@page import="com.grownited.bean.AccountTypeBean"%>
<%@page import="com.grownited.bean.StatusBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Income</title>
</head>
<body>
<%
        List<AccountTypeBean> aclist = (List<AccountTypeBean>) request.getAttribute("aclist");
        List<StatusBean> statusList = (List<StatusBean>) request.getAttribute("statusList");
       
        
	%>
	
<form action="saveincome" method="post" >
		 
Title:<input type="text" name="title"><br><br>
Date:<input type="date" name="Date"><br>

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

		
Enter Amount:<input type="number" name="amount"><br><br>

Description: <textarea name="description" rows="4" cols="40"></textarea><br>
		

			
		
		<input type="submit" value="Save Income"/>
	</form>
	<br><a href="listincome">List Your Add Income</a>



</body>
</html>