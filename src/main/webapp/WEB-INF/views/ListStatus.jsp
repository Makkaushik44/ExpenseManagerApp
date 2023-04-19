<%@page import="java.util.List"%>
<%@page import="com.grownited.bean.StatusBean"%>
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
          <li class="breadcrumb-item"><a href="admindashboard">AdminDashboard</a></li>
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
               <div class="datatable-container">
              <!-- Default Table -->
              <table class="table datatable">
    <%
	List<StatusBean> statusList =  (List<StatusBean>)request.getAttribute("statusList");
 %>
 <thead>
	<tr>
		<th>StatusId</th>
		<th>StatusName</th>

</tr>
</thead>
<tbody>
<%for(StatusBean sb:statusList){ %>
	<tr>
		<td> <%=sb.getStatusId()%> </td>
		<td> <%=sb.getStatusName()%> </td>
		
		
	</tr>
	<%} %> 
	</tbody>

             </table>
              <!-- End Default Table Example -->
              <div align="right">
              <a type="button" href="status"   class="btn btn-success" >Add Status</a>
               <a type="button" href="admindashboard" class="btn btn-primary">Back</a>
              </div>
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
<title>List Status</title>
</head>
<body>
<table border="1">
 <%
	List<StatusBean> statusList =  (List<StatusBean>)request.getAttribute("statusList");
 %>
	<tr>
		<th>CategoryId</th>
		<th>CategoryName</th>

</tr>
<%for(StatusBean sb:statusList){ %>
	<tr>
		<td> <%=sb.getStatusId()%> </td>
		<td> <%=sb.getStatusName()%> </td>
		
		
	</tr>
	<%} %> 

</table><br><br>
 <input type="button" value="Go AdminDashboard" onclick="location.href='http://localhost:9944/admindashboard'">
<input type="button" value="Go back!" onclick="history.back()"><br>
<a href="status">add another status</a>


</body>
</html> --%>