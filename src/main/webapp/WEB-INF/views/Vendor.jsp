<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<jsp:include page="AllCss.jsp"></jsp:include>
<meta charset="ISO-8859-1">
<title>NewCategory</title>
</head>
<body>


<jsp:include page="AdminSideBar.jsp"></jsp:include>

<main id="main" class="main">
<jsp:include page="AdminHeader.jsp"></jsp:include>
    <div class="pagetitle">
      <h1>Vendor Form</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
          <li class="breadcrumb-item">ManageData</li>
          <li class="breadcrumb-item active">VendorForm</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-6">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Add Vendor </h5>

              <!-- General Form Elements -->
              <form action="savevendor"  method="post" id="myform" >
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-3 col-form-label">VendorName</label>
                  <div class="col-sm-8">
                    <input type="text" class="form-control" name="vendorName" id="vendor">
                     <span id="vendorError" class="error" style="color:red;"></span>
                     
                  </div>
                </div>
                
  
                <div class="row mb-3">
                  <label class="col-sm-3 col-form-label"></label>
                  <div class="col-sm-8">
                    <button type="button" class="btn btn-primary" value="Vendor" onclick="validation()">Submit Form</button>
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
          <jsp:include page="AllJs.jsp"></jsp:include>
          
          
          

  </main>
   <script type="text/javascript">
  function validation() {
        	
        	isError = false ;
            
            
            vendor = document.getElementById("vendor")
            vendorError = document.getElementById("vendorError");
            
            
            
           
            
           
            
            
       
            
            /*this is validation for email  */
            if (vendor.value == '') {
                vendorError.innerHTML = "Please Enter VendorName"
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
<title>Vendor</title>
</head>
<body>
<form action="savevendor" method="post">

Vendor Name: <input type="text" name="vendorName"><br><br>

<input type="submit" value="Submit"/>

</form>

</body>
</html> -->