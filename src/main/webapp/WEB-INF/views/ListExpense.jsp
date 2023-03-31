<%@page import="java.util.List"%>
<%@page import="com.grownited.bean.ExpenseBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<jsp:include page="AllCss.jsp"></jsp:include>
<meta charset="ISO-8859-1">
<title>listexpense</title>
</head>
<body>


<jsp:include page="UserSideBar.jsp"></jsp:include>


<main id="main" class="main">
<jsp:include page="AdminHeader.jsp"></jsp:include>
    <div class="pagetitle">
    
      <h1>General Tables</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">AdminDashboard</a></li>
          <li class="breadcrumb-item">Tables</li>
          <li class="breadcrumb-item active">General</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
      <div class="col-lg-1"></div>
        <div class="col-lg-12">
        
          <!-- below for add buttton-->
        <div class="iconslist"  align="right">
        <a href="income">
          <i class="bi bi-plus-square-fill"></i>
          </a> 
        </div>
       <!-- close the div add button -->

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Expense List</h5>
                <div class="datatable-container">
              <!-- Default Table -->
              <table class="table datatable" id="incomelist">
<%
	List<ExpenseBean> expenselist =  (List<ExpenseBean>)request.getAttribute("expenselist");
 %> <thead>
	<tr>
		<th>Title</th>
		<th>CategoryName</th>
		<th>SubCategoryName</th>
		<th>VendorName</th>
		<th>AccountTypeName</th>
		<th>StatusName</th>
		<th>amount</th>
		<th>Date</th>
		<th>description</th>
		
</tr>
</thead>
<tbody>
<%for(ExpenseBean eb: expenselist){ %>
	<tr>
		<td> <%=eb.getTitle()%> </td>
		<td> <%=eb.getCategoryName()%> </td>
		<td> <%=eb.getSubCategoryName()%> </td>
		<td> <%=eb.getVendorName()%> </td>
		<td> <%=eb.getAccountTypeName()%> </td>
		<td> <%=eb.getStatusName()%> </td>
		<td> <%=eb.getAmount()%> </td>
		<td> <%=eb.getDate()%> </td>
		<td> <%=eb.getDescription()%> </td>
			
		
	</tr>
	<%} %> 
	</tbody>

             </table>
              <!-- End Default Table Example -->
              </div>
            </div>
          </div>

        </div>
        
      </div>
    </section>

  </main>
  <jsp:include page="AllJs.jsp"></jsp:include>
 </body>
</html>





<%-- <%@page import="com.grownited.bean.ExpenseBean"%>
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
</html> --%>