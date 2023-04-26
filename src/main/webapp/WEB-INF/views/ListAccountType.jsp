<%@page import="com.grownited.bean.AccountTypeBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<jsp:include page="AllCss.jsp"></jsp:include>
<meta charset="ISO-8859-1">
<title>ListAccountType</title>
</head>
<body>


<jsp:include page="AdminSideBar.jsp"></jsp:include>


<main id="main" class="main">
<jsp:include page="AdminHeader.jsp"></jsp:include>
    <div class="pagetitle">
    
      <h1>General Tables</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="../admindashboard">AdminDashboard</a></li>
          <li class="breadcrumb-item">Tables</li>
          <li class="breadcrumb-item active">General</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
      <div class="col-lg-1"></div>
        <div class="col-lg-8">
        
         
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Default Table</h5>
               <div class="dattable-container"></div>
              <!-- Default Table -->
              <table class="table datatable">
  <%
	List<AccountTypeBean> aclist =  (List<AccountTypeBean>)request.getAttribute("aclist");
 %>
 <thead>
	<tr>
		<th>AccountTypeId</th>
		<th>AccountTypeName</th>
		<th>Action</th>

</tr>
</thead>
<tbody>
<%for(AccountTypeBean atb: aclist){ %>
	<tr>
		<td> <%=atb.getAccountTypeId()%> </td>
		<td> <%=atb.getAccountTypeName()%> </td>
		<td><a href="deleteaccounttype/<%=atb.getAccountTypeId()%>">Delete</a></td>
		
		
	</tr>
	<%} %> 
	</tbody>

             </table>
              <!-- End Default Table Example -->
              <div align="right">
              <a type="button" href="accounttype"   class="btn btn-success" >Add AccountType</a>
               <a type="button" href="admindashboard" class="btn btn-primary">Back</a>
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
<title>ListAccountType</title>
</head>
<body>
<table border="1">
 <%
	List<AccountTypeBean> aclist =  (List<AccountTypeBean>)request.getAttribute("aclist");
 %>
	<tr>
		<th>AccountTypeId</th>
		<th>AccountTypeName</th>

</tr>
<%for(AccountTypeBean atb: aclist){ %>
	<tr>
		<td> <%=atb.getAccountTypeId()%> </td>
		<td> <%=atb.getAccountTypeName()%> </td>
		
		
	</tr>
	<%} %> 

</table><br><br>
<a href="accounttype">Add Another Account type</a>

</body>
</html> --%>