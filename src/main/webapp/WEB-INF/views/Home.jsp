<%@page import="com.grownited.bean.ExpenseChartBean"%>
<%@page import="java.util.List"%>
<html>
<head>
<meta charset="ISO-8859-1">

<jsp:include page="AllCss.jsp"></jsp:include>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
<jsp:include page="UserSideBar.jsp"></jsp:include>

<div class="pagetitle">
<jsp:include page="AdminHeader.jsp"></jsp:include>
   <main id="main" class="main">

    <div class="pagetitle">
      <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="home">UserDashboard</a></li>
          <li class="breadcrumb-item active">Dashboard</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
      <div class="row">

        <!-- Left side columns -->
        <div class="col-lg-12">
          <div class="row">

            <!-- Sales Card -->
            <div class="col-xxl-4 col-md-6">
              <div class="card info-card sales-card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">Expense<span>| Today</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-cart"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${ExpenseUser==null?0:ExpenseUser }</h6>
                      <span class="text-success small pt-1 fw-bold">12%</span> <span class="text-muted small pt-2 ps-1">increase</span>

                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Sales Card -->

            <!-- Revenue Card -->
            <div class="col-xxl-4 col-md-6">
              <div class="card info-card revenue-card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">Month Expense <span>| This Month</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-currency-dollar"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${UserMonthExpense==null?0:UserMonthExpense }</h6>
                      <span class="text-success small pt-1 fw-bold">8%</span> <span class="text-muted small pt-2 ps-1">increase</span>

                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Revenue Card -->

            <!-- Customers Card -->
            <div class="col-xxl-4 col-xl-12">

              <div class="card info-card customers-card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">Month Income <span>| This Year</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-people"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${UserMonthIncome==null?0:UserMonthIncome }</h6>
                      <span class="text-danger small pt-1 fw-bold">12%</span> <span class="text-muted small pt-2 ps-1">decrease</span>

                    </div>
                    
                    
                    
                    
                    
                    
                  </div>

                </div>
              </div>

            </div><!-- End Customers Card -->

           

               

                    <div class="col-xxl-4 col-md-6">
              <div class="card info-card sales-card">
                <div class="card-body">
                  <h5 class="card-title">Add Expense</h5>

                  <div class="icon" >
                   <div class="label">
                   <a href="expense">
                      <i class="bi bi-plus-circle-fill"></i></a>
                      Add Expense
                    </div>
                   
                  </div>
                </div>

              </div>
            </div>
            
            
             <div class="col-xxl-4 col-md-6">
              <div class="card info-card sales-card">
                <div class="card-body">
                  <h5 class="card-title">Add Income</h5>

                  <div class="icon" >
                   <div class="label">
                   <a href="income">
                      <i class="bi bi-plus-circle-fill"></i></a>
                      Add Income
                    </div>
                   
                  </div>
                </div>

              </div>
            </div>
           

            
  
          </div>
          
          <%
				List<ExpenseChartBean> pieChartDataUser = (List<ExpenseChartBean>) request.getAttribute("pieChartDataUser");
				%>
				
      <div class="col-12">             
<div class="card">
            <div class="card-body">
              <h5 class="card-title">Pie Chart</h5>

              <!-- Bar Chart -->
              <canvas id="barChart" style="max-height: 400px; display: block; box-sizing: border-box; height: 400px; width: 884px;" width="1106" height="500"></canvas>
              <script>
                document.addEventListener("DOMContentLoaded", () => {
                  new Chart(document.querySelector('#barChart'), {
                    type: 'doughnut',
                    data: {
                      labels: [<%for (ExpenseChartBean e : pieChartDataUser) {%>
						 '<%=e.getCategoryName()%>',
							<%}%>],
                      datasets: [{
                        label: 'Pie Chart',
                        data: [<%for (ExpenseChartBean e : pieChartDataUser) {%>
						<%=e.getExpenseAmount()%>,
						<%}%>],
                        backgroundColor: [
                          'rgba(255, 99, 132, 0.2)',
                          'rgba(255, 159, 64, 0.2)',
                          'rgba(255, 205, 86, 0.2)',
                          'rgba(75, 192, 192, 0.2)',
                          'rgba(54, 162, 235, 0.2)',
                          'rgba(153, 102, 255, 0.2)',
                          'rgba(201, 203, 207, 0.2)'
                        ],
                        borderColor: [
                          'rgb(255, 99, 132)',
                          'rgb(255, 159, 64)',
                          'rgb(255, 205, 86)',
                          'rgb(75, 192, 192)',
                          'rgb(54, 162, 235)',
                          'rgb(153, 102, 255)',
                          'rgb(201, 203, 207)'
                        ],
                        borderWidth: 1
                      }]
                    },
                    options: {
                      scales: {
                        y: {
                          beginAtZero: true
                        }
                      }
                    }
                  });
                });
              </script>
              <!-- End Bar CHart -->
              </div></div> 
             
 
          
          
        </div><!-- End Left side columns -->
        </div>
       </div>
          </section>
</main>
        <!-- Right side columns -->
         
 
          
          
</div>
         
          

       <!-- End Right side columns -->

      



  
   <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">
    <div class="copyright">
      � Copyright <strong><span>ExpenseManagerWebApp</span></strong>. All Rights Reserved
    </div>
    <div class="credits">
      <!-- All the links in the footer should remain intact. -->
      <!-- You can delete the links only if you purchased the pro version. -->
      <!-- Licensing information: https://bootstrapmade.com/license/ -->
      <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
     
    </div>
  </footer><!-- End Footer -->
      <jsp:include page="AllJs.jsp"></jsp:include>
</body>
</html>











<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body>
<h2>You have Successfully Login </h2>
<a href="expense">Add Expense</a><br><br>
<a href="income">Add Income</a><br><br>
<a href="logout">LogOut</a>
</body>
</html> --%>