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
      <h1>Category Form</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
          <li class="breadcrumb-item">ManageData</li>
          <li class="breadcrumb-item active">CategoryForm</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section"> 
      <div class="row">
        <div class="col-lg-6">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Add category </h5>

              <!-- General Form Elements -->
              <form action="saveaccounttype"  method="post" id="myform" >
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-4 col-form-label">AccountTypeName</label>
                  <div class="col-sm-8">
                    <input type="text" class="form-control" name="AccountTypeName" id="accounttype">
                    <span id="accounttypeError" class="error" style="color:red;"></span>
                  </div>
                </div>
                
  
                <div class="row mb-3">
                  <label class="col-sm-4 col-form-label"></label>
                  <div class="col-sm-8">
                    <button type="button" class="btn btn-primary" class="ld_sf_submit" value="accounttype" onclick="validation()">Submit</button>
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
            
            
        	accounttype = document.getElementById("accounttype")
            accounttypeError = document.getElementById("accounttypeError");
            
           
            /*this is validation for email  */
            if (accounttype.value == '') {
                accounttypeError.innerHTML = "Please Enter AccountTypeName"
                	isError = true ; 
            }else {
            	accounttypeError.innerHTML = ""
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
<title>Account Type</title>
</head>
<body>
<form action="saveaccounttype"  method="post"  >
Account Type Name:<input type="text" name="AccountTypeName"><br><br>

<input type="submit" value="submit"/>
</form>
<br><br>
<a href="admindashboard">Return AdminDashboard</a> <br><br>


</body>
</html> -->