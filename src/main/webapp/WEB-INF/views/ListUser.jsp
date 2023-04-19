<%@page import="org.apache.catalina.User"%>
<%@page import="com.grownited.bean.UserBean"%>
<%@page import="java.util.List"%>
<%@page import="com.grownited.bean.ExpenseBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<jsp:include page="AllCss.jsp"></jsp:include>
<meta charset="ISO-8859-1">
<title>listuser</title>
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
              <h5 class="card-title">User List</h5>
                <div class="datatable-container">
              <!-- Default Table -->
              <table class="table datatable" id="userlist">
<%
	List<UserBean> userlist =  (List<UserBean>)request.getAttribute("userList");
 %> <thead>
	<tr>
		<th>UserId</th>
		<th>FirstName</th>
		<th>LastName</th>
		<th>Email</th>
		<th>DOB</th>
		<th>Gender</th>
		<th>CreateAt</th>
		
		
</tr>
</thead>
<tbody>
<%for(UserBean ub: userlist){ %>
	<tr>
		<td> <%=ub.getUserId()%> </td>
		<td> <%=ub.getFirstName()%> </td>
		<td> <%=ub.getLastName()%> </td>
		<td> <%=ub.getEmail()%> </td>
		<td> <%=ub.getDOB()%> </td>
		<td> <%=ub.getGender()%> </td>
		<td> <%=ub.getCreatedAt()%> </td>
		
			
		
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
