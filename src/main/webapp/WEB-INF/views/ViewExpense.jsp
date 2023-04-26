<!DOCTYPE html>
<%@page import="com.grownited.bean.ExpenseBean"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Expanse Manager | View Category </title>



<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="../assets/img/favicon.png" rel="icon">
<link href="../assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link href="https://fonts.gstatic.com" rel="preconnect">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->

<link href="../assets/vendor/bootstrap/css/bootstrap.min.css"rel="stylesheet">
<link href="../assets/vendor/bootstrap-icons/bootstrap-icons.css"rel="stylesheet">
<link href="../assets/vendor/boxicons/css/boxicons.min.css"rel="stylesheet">

<link href="../assets/vendor/bootstrap/css/bootstrap.min.css"rel="stylesheet">
<link href="../assets/vendor/bootstrap-icons/bootstrap-icons.css"rel="stylesheet">
<link href="../assets/vendor/boxicons/css/boxicons.min.css"rel="stylesheet">
<link href="../assets/vendor/quill/quill.snow.css" rel="stylesheet">
<link href="../assets/vendor/quill/quill.bubble.css" rel="stylesheet">
<link href="../assets/vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="../assets/vendor/simple-datatables/style.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="../assets/css/style.css" rel="stylesheet">





</head>
<body>


<jsp:include page="AdminSideBar.jsp"></jsp:include>

<main id="main" class="main">
<jsp:include page="AdminHeader.jsp"></jsp:include>
    <div class="pagetitle">
      <h1>Category</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="../admindashboard">Home</a></li>
          <li class="breadcrumb-item">Category</li>
          <li class="breadcrumb-item active">View Category</li>
        </ol>
      </nav>
    </div>
    
 <%
		ExpenseBean expenseBean = (ExpenseBean) request.getAttribute("expenseBean");
	%>

    <section class="section">
      <div class="row">
        <div class="col-lg-12">
        
       

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">View Expense</h5>

               <table class="table" border="1" >
               
              <thead>
                  <tr>
                    <th scope="col">ExpenseId</th>
                     <th scope="col">Title</th>
                      <th scope="col">Date</th>
                       <th scope="col">CategoryName</th>
                        <th scope="col">SubCategoryName</th>
                         <th scope="col">VendorName</th>
                          <th scope="col">AccountType</th>
                           <th scope="col">Payment Status</th>
                            <th scope="col">Amount</th>
                             <th scope="col">Discription</th>
                    
                    
                  </tr>
                </thead>
                 <tbody>
         
				<tr>
					<td><%=expenseBean.getExpenseId()%></td>
					<td><%=expenseBean.getTitle()%></td>
					<td><%=expenseBean.getDate()%></td>
					<td><%=expenseBean.getCategoryId()%></td>
					<td><%=expenseBean.getSubCategoryName()%></td>
					<td><%=expenseBean.getVendorName()%></td>
					<td><%=expenseBean.getAccountTypeName()%></td>
					<td><%=expenseBean.getStatusName()%></td>
					<td><%=expenseBean.getAmount()%></td>
					<td><%=expenseBean.getDescription()%></td>
				</tr>
	
	
	
                 </tbody>
               
               </table>
               
               
               ExpenseId:-<%=expenseBean.getCategoryName()%>

              <%-- <!-- Default Table -->
              <table class="table" border="1" >
                <thead>
                  <tr>
                    <th scope="col">ExpenseId</th>
                    <th scope="col">Title</th>
                    <th scope="col">date</th>
                    
                  </tr>
                </thead>
                <tbody>
         
				<tr>
					<td><%=expenseBean.getExpenseId()%></td>
					<td><%=expenseBean.getTitle()%></td>
					<td><%=expenseBean.getDate()%></td>
					
				</tr>
	
	
	
                 </tbody>
              </table> --%>
              
              <div class="row mb-4">
                  <label class="col-sm-4 col-form-label"></label>
                  <div class="col-sm-8" align="right">
                  <a type="button" href="../listexpesne" class="btn btn-primary" >Back</a>
                  </div>
                </div>
             
            </div>
          </div>
        </div>
      </div>
    </section>
  </main>
  
   
  
  <!-- Vendor JS Files -->
  <script src="../assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="../assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="../assets/vendor/chart.js/chart.umd.js"></script>
  <script src="../assets/vendor/echarts/echarts.min.js"></script>
  <script src="../assets/vendor/quill/quill.min.js"></script>
  <script src="../assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="../assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="../assets/vendor/php-email-form/validate.js"></script>
  
  <!-- Template Main JS File -->
  <script src="../assets/js/main.js"></script>
  





</body>
</html>