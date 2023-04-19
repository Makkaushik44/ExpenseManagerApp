<%@page import="com.grownited.bean.CategoryBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="AllCss.jsp"></jsp:include>
<meta charset="ISO-8859-1">
<title>List Category</title>
</head>
<body>
<!-- <h3>List Category</h3> -->

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
              <table class="table datatable" id="listcategory">
              
              
              
            

 <%
	List<CategoryBean> list =  (List<CategoryBean>)request.getAttribute("list");
 %>
 <thead>
	<tr>
		<th>CategoryId</th>
		<th>CategoryName</th>
		<th>Action</th>
		<th>Action</th>
		
	</tr>
	</thead>
	<tbody>
<%for(CategoryBean cb:list){ %>
	<tr>
		<td> <%=cb.getCategoryId()%> </td>
		<td> <%=cb.getCategoryName()%> </td>
	
		<td>
											<div class="form-check form-switch">


												<input class="form-check-input" onclick="changeStatus(<%=cb.getCategoryId()%>,<%=cb.getDeleted() %>)" type="checkbox"
													id="flexSwitchCheckChecked"
													<%=!cb.getDeleted() ? "checked" : ""%>>

											</div>
										</td>
		<td>
		<a href="viewcategory/<%=cb.getCategoryId()%>"><i class="bi bi-eye"></i></a>|
		<a href="editcategory?categoryId=<%=cb.getCategoryId()%>"><i class="bi bi-pencil"></i>   </a></td>
	</tr>
	<%} %>
</tbody>
       </table>
       <div align="right">
              <a type="button" href="newcategory"   class="btn btn-success" >Add NewCategory</a>
               <a type="button" href="admindashboard" class="btn btn-primary">Back</a>
              </div>
       </div>
         
              <!-- End Default Table Example -->
            </div>
        
          </div>

   

        </div>

        
      </div>
    </section>

  </main>
<jsp:include page="AllJs.jsp"></jsp:include>
<script type="text/javascript">
		function changeStatus(categoryId,currentStatus){
 			location.href="deletecategory/"+categoryId+"/"+currentStatus;
			
		}
	</script>

</body>
</html>


<%-- <table border="1">
 <%
	List<CategoryBean> list =  (List<CategoryBean>)request.getAttribute("list");
 %>
	<tr>
		<th>CategoryId</th>
		<th>CategoryName</th>
		<th>Deleted?</th>
		<th>Action</th>
	</tr>
<%for(CategoryBean cb:list){ %>
	<tr>
		<td> <%=cb.getCategoryId()%> </td>
		<td> <%=cb.getCategoryName()%> </td>
		<td> <%=cb.getDeleted()%> </td>
		<td><a href="deletecategory/<%=cb.getCategoryId()%>">Delete</a>
		<a href="viewcategory/<%=cb.getCategoryId()%>">view</a></td>
	</tr>
	<%} %>

</table>

<a href="newcategory">New Category</a> --%>