<%@page import="java.util.List"%>
<%@page import="com.grownited.bean.VendorBean"%>
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

 <div class="datatable-container">div
              <!-- Default Table -->
              <table class="table datatable">
   <%
	List<VendorBean> vendorlist =  (List<VendorBean>)request.getAttribute("vendorlist");
 %>
 <thead>
	<tr>
		<th>VendorId</th>
		<th>VendorName</th>
		<th>Deleted?</th>
		<th>Action</th>
	</tr>
	</thead>
	<tbody>
<%for(VendorBean vb:vendorlist){ %>
	<tr>
		<td> <%=vb.getVendorId()%> </td>
		<td> <%=vb.getVendorName()%> </td>
		<td> <%=vb.getDeleted()%> </td>
		<td><a href="deletevendor/<%=vb.getVendorId()%>">Delete</a></td>
	</tr>
	<%} %>
	</tbody>

             </table>
              <!-- End Default Table Example -->
              <div align="right">
              <a type="button" href="vendor"   class="btn btn-success" >Add vendor</a>
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
<title>List Vendor</title>
</head>
<body>
<table border="1">
 <%
	List<VendorBean> vendorlist =  (List<VendorBean>)request.getAttribute("vendorlist");
 %>
	<tr>
		<th>VendorId</th>
		<th>VendorName</th>
		<th>Deleted?</th>
		<th>Action</th>
	</tr>
<%for(VendorBean vb:vendorlist){ %>
	<tr>
		<td> <%=vb.getVendorId()%> </td>
		<td> <%=vb.getVendorName()%> </td>
		<td> <%=vb.getDeleted()%> </td>
		<td><a href="deletevendor/<%=vb.getVendorId()%>">Delete</a></td>
	</tr>
	<%} %>

</table>

</body>
</html> --%>