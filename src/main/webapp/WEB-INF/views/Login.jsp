<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>ExpenseManager / Login </title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/logo-3.png" rel="icon"><!-- old=favicon -->
  <link href="assets/img/logo-3.png" rel="logo-3"><!--  apple-touch-icon-->

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: NiceAdmin
  * Updated: Mar 09 2023 with Bootstrap v5.2.3
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <main>
    <div class="container">

      <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

              <div class="d-flex justify-content-center py-4">
                <a href="login" class="logo d-flex align-items-center w-auto">
                  <img src="assets/img/logo-3.png" alt="">
                  <span class="d-none d-lg-block">ExpenseManager</span>
                </a>
              </div><!-- End Logo -->

              <div class="card mb-3">

                <div class="card-body">

                  <div class="pt-4 pb-2">
                    <h5 class="card-title text-center pb-0 fs-4">Login to Your Account</h5>
                    <p class="text-center small">Enter your email & password to login</p>
                  </div>

                  <form class="row g-3 needs-validation" novalidate action="authentication"  id="myform" method="post" >

                    <div class="col-12">
                      <label for="yourEmail" class="form-label">Your Email</label>
                      <input type="email" name="email" class="form-control" id="yourEmail" required>
                      <span id="emailError" class="error"></span>
                      <div class="invalid-feedback">Please enter a valid Email adddress!</div>
                      
                    </div>

                    <div class="col-12">
                      <label for="yourPassword" class="form-label">Password</label>
                      <input type="password" name="password" class="form-control" id="yourPassword" required>

                      <div class="invalid-feedback">Please enter your password!</div>
                    </div>

                    <div class="col-12">
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" name="remember" value="true" id="rememberMe">
                        <label class="form-check-label" for="rememberMe">Remember me</label>
                      </div>
                    </div>
                    <div class="col-12">
                      <button class="btn btn-primary w-100" type="submit" value="LogIn" onclick="validation()">Login</button>
                    </div>
                     <div class="col-12">
                      <p class="small mb-0">Don't Remember Password? <a href="forgetpassword">ForgotPassword</a></p>
                    </div>
                    <div class="col-12">
                      <p class="small mb-0">Don't have account? <a href="signup">Create an account</a></p>
                    </div>
                  </form>

                </div>
              </div>

             

            </div>
          </div>
        </div>

      </section>

    </div>
  </main><!-- End #main -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <script type="text/javascript">
       


        function validation() {
        	
        	isError = false ;
            
            
            email = document.getElementById("yourEmail")
            emailError = document.getElementById("emailError");
            emailRegex = /^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z0-9-]{2,3}$/;
            
            
            passw = document.getElementById("yourPassword");
            passwError = document.getElementById("passwError");
            passwRegex=  /^[A-Za-z0-9]\w{7,14}$/;
            
           
            
            
       
            
            /*this is validation for email  */
            if (email.value == '') {
                emailError.innerHTML = "Please Enter Email"
                	isError = true ; 
            }else {
                    emailError.innerHTML = ""
                }
            
             /*this is for password  */
             if (passw.value == '') {
                passwError.innerHTML = "Please Enter Password"
                	isError = true ; 
            } else {
                if (passwRegex.test(passw.value) == false) {
                    passwError.innerHTML = "Please Enter Strong Password"
                    	isError = true ; 
                } else {
                    passwError.innerHTML = ""
                }
            }
             
             
             if(isError == false){
                 myform = document.getElementById("myform");
                 myform.submit(); 
            
             }
             
        }//end function
            </script> 
 
 
 <script src="assets/js/main.js"></script>

 	<link
		href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css"
		rel="stylesheet" />
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"
		integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8="
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script> 

	<script>
		
	<%if (request.getAttribute("error") != null) {%>
	toastr
	.error("<%=request.getAttribute("error")%>")
	<%}%>
		 
	</script>
	 
	 <!--  <script type="text/javascript">
       


        function validation() {
        	
        	isError = false ;
            
            
            email = document.getElementById("yourEmail")
            emailError = document.getElementById("emailError");
            emailRegex = /^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z0-9-]{2,3}$/;
            
            
            passw = document.getElementById("yourPassword");
            passwError = document.getElementById("passwError");
            passwRegex=  /^[A-Za-z0-9]\w{7,14}$/;
            
           
            
            
       
            
            /*this is validation for email  */
            if (email.value == '') {
                emailError.innerHTML = "Please Enter Email"
                	isError = true ; 
            }else {
                    emailError.innerHTML = ""
                }
            
             /*this is for password  */
             if (passw.value == '') {
                passwError.innerHTML = "Please Enter Password"
                	isError = true ; 
            } else {
                if (passwRegex.test(passw.value) == false) {
                    passwError.innerHTML = "Please Enter Strong Password"
                    	isError = true ; 
                } else {
                    passwError.innerHTML = ""
                }
            }
             
             
             if(isError == false){
                 myform = document.getElementById("myform");
                 myform.submit(); 
            
             }
             
        }//end function
            </script> -->
 

</body>

</html>