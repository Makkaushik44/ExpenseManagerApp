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
              <form action="savevendor"  method="post" >
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-3 col-form-label">VendorName</label>
                  <div class="col-sm-8">
                    <input type="text" class="form-control" name="vendorName">
                  </div>
                </div>
                
  
                <div class="row mb-3">
                  <label class="col-sm-3 col-form-label"></label>
                  <div class="col-sm-8">
                    <button type="submit" class="btn btn-primary">Submit Form</button>
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