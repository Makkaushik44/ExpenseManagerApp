<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>ExpenseManger / Register </title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/logo-3.png" rel="icon"><!--this is logo for localhost website logo//before new= favicon  -->
  <link href="assets/img/logo-3.png" rel="logo-3"><!-- old=apple-touch-icon -->

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
  
   <style type="text/css">
        .error {
            color: red;
        }
    </style>

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
                <a href="index.html" class="logo d-flex align-items-center w-auto">
                  <img src="assets/img/logo-3.png" alt="">
                  <span class="d-none d-lg-block">ExpenseManager</span>
                </a>
              </div><!-- End Logo -->

              <div class="card mb-3">

                <div class="card-body">

                  <div class="pt-4 pb-2">
                    <h5 class="card-title text-center pb-0 fs-4">Create an Account</h5>
                    <p class="text-center small">Enter your personal details to create account</p>
                  </div>

                  <form class="row g-3 needs-validation" novalidate action="saveuser" method="post" id="myform">
                    <div class="col-12">
                      <label for="yourName" class="form-label">FirstName</label>
                      <input type="text" name="firstName" class="form-control" id="firstName" required>
                      <span id="firstNameError" class="error"></span>
                      <div class="invalid-feedback">Please, enter your firstname!</div>
                    </div>
                    
                    <div class="col-12">
                      <label for="yourName" class="form-label">LastName</label>
                      <input type="text" name="lastName" class="form-control" id="lastName" required> <!-- id="yourName" -->
                     <span id="lastNameError" class="error"></span>
                      <div class="invalid-feedback">Please, enter your LastName!</div>
                    </div>

                    <div class="col-12">
                      <label for="yourEmail" class="form-label">Your Email</label>
                      <input type="email" name="email" class="form-control" id="yourEmail" required>
                      <span id="emailError" class="error"></span>
                      <div class="invalid-feedback">Please enter a valid Email adddress!</div>
                       <div style="color:red;" >${error}</div>
                    </div>

                    

                    <div class="col-12">
                      <label for="yourPassword" class="form-label">Password</label>
                      <input type="password" name="password" class="form-control" id="yourPassword" required>
                       <span id="passwError" class="error"></span>
                      <div class="invalid-feedback">Please enter your password!</div>
                    </div>
                    
                    
                     <div class="row mb-3">
                  <label for="inputDate" class="col-sm-2 col-form-label">DOB</label>
                  <div class="col-sm-12">
                    <input type="date" id="myDate" name = "DOB"  class="form-control" name="Date">
                  </div>
                </div>
                
                <!-- <fieldset class="row mb-3">
                  <legend class="col-form-label col-sm-2 pt-0">Gender</legend>
                  <div class="col-sm-9">
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="gender" id="gridRadios1" value="Male" checked="">
                      <label class="form-check-label" for="gridRadios1">
                      Male
                      </label>
                     
                    </div>
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="gender" id="gridRadios2" value="Female">
                   <label class="form-check-label" for="gridRadios2">
                        Female
                      </label>
                    </div>
                  </div>
                </fieldset> -->
                <div class="col-12">
                      <label for="yourName" class="form-label">Gender :</label>
                      <br>
                      	<input type="radio" name="gender" value="male" checked> Male
						<input type="radio" name="gender" value="female" > Female
						
                     </div>

                    <div class="col-12">
                      <div class="form-check">
                        <input class="form-check-input" name="terms" type="checkbox" value="" id="acceptTerms" required>
                        <label class="form-check-label" for="acceptTerms">I agree and accept the <a href="#">terms and conditions</a></label>
                        <div class="invalid-feedback">You must agree before submitting.</div>
                      </div>
                    </div>
                    
                   
                    
                    <div class="col-12">
                  <!--   <input type="button" onClick="validation()" value="Signup"/> -->
                      <button class="btn btn-primary w-100" type="button" value="Signup" onclick="validation()">Create Account</button> 
                    </div>
                    <div class="col-12">
                      <p class="small mb-0">Already have an account? <a href="login">Log in</a></p>
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






  <!-- Vendor JS Files -->
  <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/chart.js/chart.umd.js"></script>
  <script src="assets/vendor/echarts/echarts.min.js"></script>
  <script src="assets/vendor/quill/quill.min.js"></script>
  <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
  
  <script type="text/javascript">
       


        function validation() {
        	
        	isError = false ;
            firstName = document.getElementById("firstName");
            firstNameError = document.getElementById("firstNameError");
            firstNameRegex = /^[a-zA-Z]+$/;
            
            email = document.getElementById("yourEmail")
            emailError = document.getElementById("emailError");
            emailRegex = /^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z0-9-]{2,3}$/;
            
            lastName = document.getElementById("lastName");
            lastNameError = document.getElementById("lastNameError");
            lastNameRegex = /^[a-zA-Z]+$/;
            
            passw = document.getElementById("yourPassword");
            passwError = document.getElementById("passwError");
            passwRegex=  /^[A-Za-z0-9]\w{7,14}$/;
            
            
            /*this is validation for firstname  */
            if (firstName.value == '') {
                firstNameError.innerHTML = "Please Enter FirstName"
                	isError = true ; 
            } else {
                if (firstNameRegex.test(firstName.value) == false) {
                    firstNameError.innerHTML = "Please Enter Valid FirstName";
                    isError = true ; 

                } else {
                    firstNameError.innerHTML = "";

                }
            }
            
            
            /*this is validation for lastname  */
            if (lastName.value == '') {
                lastNameError.innerHTML = "Please Enter LastName"
                	isError = true ; 
            } else {
                if (lastNameRegex.test(lastName.value) == false) {
                    lastNameError.innerHTML = "Please Enter Valid LastName";
                    isError = true ; 

                } else {
                    lastNameError.innerHTML = "";

                }
            }
            
            /*this is validation for email  */
            if (email.value == '') {
                emailError.innerHTML = "Please Enter Email"
                	isError = true ; 
            } else {
                if (emailRegex.test(email.value) == false) {
                    emailError.innerHTML = "Please Enter Valid Email"
                    	isError = true ; 
                } else {
                    emailError.innerHTML = ""
                }
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
</body>

</html>