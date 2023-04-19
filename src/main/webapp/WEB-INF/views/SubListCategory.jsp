<%@page import="com.grownited.bean.SubCategoryBean"%>
<%@page import="java.util.List"%>
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
        <div class="col-lg-12">
        
          

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Default Table</h5>

      <div class="datatable-container">
              <!-- Default Table -->
              <table class="table datatable">
 <%
	List<SubCategoryBean> sublist = (List<SubCategoryBean>)request.getAttribute("sublist");
 %>
 <thead>
	<tr>
		<th>CategoryId</th>
		<th>SubcategoryId</th>
		<th>CategoryName</th>
		<th>SubCategoryName</th>
		<th>Deleted?</th>
		<th>Action</th>
	</tr>
	</thead>
	<tbody>
<%for(SubCategoryBean scb:sublist){ %>
	<tr>
		<td> <%=scb.getCategoryId()%> </td>
		<td> <%=scb.getSubcategoryId()%> </td>
        <td> <%=scb.getCategoryName()%> </td>		
		<td> <%=scb.getSubcategoryName()%> </td>
		<td> <%=scb.getDeleted()%> </td>
		<td>
			<a href="deletesubcategory/<%=scb.getSubcategoryId()%>"><i class="bi bi-trash text-danger"></i> </a>
			<a href="editsubcategory?subCategoryId=<%=scb.getSubcategoryId() %>"><i class="bi bi-pencil text-primary"></i></a>
										</td>
	</tr>
	<%} %>
</tbody>
             </table>
              <!-- End Default Table Example -->
               <div align="right">
              <a type="button" href="newsubcategory"   class="btn btn-success" >Add NewSubCategory</a>
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
<%-- <h2>Sub ListCategory Table</h2>
<table border="1">
 <%
	List<SubCategoryBean> sublist = (List<SubCategoryBean>)request.getAttribute("sublist");
 %>
	<tr>
		<th>CategoryId</th>
		<th>SubcategoryId</th>
		<th>CategoryName</th>
		<th>SubCategoryName</th>
		<th>Deleted?</th>
		<th>Action</th>
	</tr>
<%for(SubCategoryBean scb:sublist){ %>
	<tr>
		<td> <%=scb.getCategoryId()%> </td>
		<td> <%=scb.getSubcategoryId()%> </td>
        <td> <%=scb.getCategoryName()%> </td>		
		<td> <%=scb.getSubcategoryName()%> </td>
		<td> <%=scb.getDeleted()%> </td>
		<td> <a href="deletesubcategory/<%=scb.getSubcategoryId()%>">delete</a>
		<a href="viewsubcategory/<%=scb.getSubcategoryId()%>">view</a></td>
	</tr>
	<%} %>

</table> --%>


</body>
</html>