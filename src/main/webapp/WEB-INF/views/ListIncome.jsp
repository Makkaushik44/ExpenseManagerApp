<%@page import="java.util.List"%>
<%@page import="com.grownited.bean.IncomeBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<jsp:include page="AllCss.jsp"></jsp:include>
<meta charset="ISO-8859-1">
<title>SubListCategories</title>
</head>
<body>


<jsp:include page="UserSideBar.jsp"></jsp:include>


<main id="main" class="main">
<jsp:include page="AdminHeader.jsp"></jsp:include>
    <div class="pagetitle">
    
      <h1>Income List Tabel</h1>
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
      <div class="col-lg-0"></div>
        <div class="col-lg-10">
        
          <!-- below for add buttton-->
        <div class="iconslist"  align="right">
        <a href="income">
          <i class="bi bi-plus-square-fill"></i>
          </a> 
        </div>
       <!-- close the div add button -->

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Income List Table</h5>
                <div class="datatable-container">
              <!-- Default Table -->
              <table class="table datatable" id="incomelist">
 <%
	List<IncomeBean> incomelist =  (List<IncomeBean>)request.getAttribute("incomelist");
 %>
 <thead>
	<tr>
		<th>Title</th>
		<th>Date</th>
		<th>AccountTypeName</th>
		<th>StatusName</th>
		<th>amount</th>
		<th>description</th>
		

</tr>
</thead>
<tbody>
<%for(IncomeBean ib: incomelist){ %>
	<tr>
		<td> <%=ib.getTitle()%> </td>
		<td> <%=ib.getDate()%> </td>
		<td> <%=ib.getAccountTypeName()%> </td>
		<td> <%=ib.getStatusName()%> </td>
		<td> <%=ib.getAmount()%> </td>
		<td> <%=ib.getDescription()%> </td>

		
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

<%-- <html>
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
</html> --%>