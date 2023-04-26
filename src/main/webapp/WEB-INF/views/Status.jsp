<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<jsp:include page="AllCss.jsp"></jsp:include>
<meta charset="ISO-8859-1">
<title>Status</title>
</head>
<body>

<jsp:include page="AdminSideBar.jsp"></jsp:include>

<main id="main" class="main">
<jsp:include page="AdminHeader.jsp"></jsp:include>
    <div class="pagetitle">
      <h1>Status Form</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
          <li class="breadcrumb-item">ManageData</li>
          <li class="breadcrumb-item active">StatusForm</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-6">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Add Status</h5>

              <!-- General Form Elements -->
              <form action="savestatus"  method="post" id="myform">
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-3 col-form-label">StatusName</label>
                  <div class="col-sm-8">
                    <input type="text" class="form-control" name="StatusName" id="status">
                     <span id="statusError" class="error" style="color:red;"></span>
                  </div>
                </div>
                
  
                <div class="row mb-3">
                  <label class="col-sm-3 col-form-label"></label>
                  <div class="col-sm-8">
                    <button type="button" class="btn btn-primary" value="Status" onclick="validation()">Submit Form</button>
                  </div>
                </div>

              </form><!-- End General Form Elements -->

            </div>
          </div>

        </div>

        <div class="col-lg-6">

          

        </div>
      </div>
    </section>

  </main>
  <jsp:include page="AllJs.jsp"></jsp:include>
  
   <script type="text/javascript">
  function validation() {
        	
        	isError = false ;
            
            
        	vendor = document.getElementById("status")
            vendorError = document.getElementById("statusError");
            
            
            
       
            
            /*this is validation for email  */
            if (vendor.value == '') {
            	vendorError.innerHTML = "Please Enter StatusName"
                	isError = true ; 
            }else {
            	vendorError.innerHTML = ""
                }
            
             
            if(isError == false){
                myform = document.getElementById("myform");
                myform.submit(); 
           
            }
            
             
        }//end function
            </script>


</body>
</html>

<!-- <html>
<head>
<meta charset="ISO-8859-1">
<title>Status</title>
</head>
<body>
<form action="savestatus" method="post">
Status Name:<input type="text" name="StatusName"><br><br>

<input type="submit" value="submit"/>
</form>
<br>
<a href="liststatus">List Status</a><br><br>
<a href="admindashboard">Return Main Page</a>

</body>
</html> -->