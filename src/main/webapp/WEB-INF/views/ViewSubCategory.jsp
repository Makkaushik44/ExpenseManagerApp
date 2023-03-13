<%@page import="com.grownited.bean.SubCategoryBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View sub Category</title>
</head>
<body>
<h2>View Sub Category Table</h2>

<%
		SubCategoryBean subCategoryBean = (SubCategoryBean) request.getAttribute("subCategoryBean");
	%>

subCategoryId: <%=subCategoryBean.getSubcategoryId() %><br>
CtaegoryId:<%=subCategoryBean.getCategoryId() %><br>
CategoryName:<%=subCategoryBean.getCategoryName() %><br>
SubcategroyName:<%=subCategoryBean.getSubcategoryName()%><br>
deleted: <%=subCategoryBean.getDeleted()%><br>

</body>
</html>