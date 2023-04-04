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
      <h1>UpdatedCategory Form</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
          <li class="breadcrumb-item">ManageData</li>
          <li class="breadcrumb-item active">UpdatedCategoryForm</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-6">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Update category </h5>

              <!-- General Form Elements -->
             <form action="updatecategory" method="post">
							<input type="hidden" name="categoryId" value="${categoryBean.categoryId}"/>
							<div class="row mb-3">
								<label for="inputText" class="col-sm-2 col-form-label">Category
									Name</label>
								<div class="col-sm-6">
									<input type="text" name="categoryName" value="${categoryBean.categoryName}" class="form-control">
								</div>
							</div>



							<div class="row mb-4">
								<div class="col-2"></div>
								<div class="col-4">
									<button class="btn btn-primary w-100" type="submit">Update
										Category</button>

								</div>
								<div class="col-4">
									<a class="btn btn-danger w-100" href="listcategories" type="button">Cancel</a>

								</div>

							</div>



						</form><!-- End General Form Elements -->
						
						<!-- Table with stripped rows -->

						<br> <a href="listcategories"> <i
							class="bi bi-arrow-left"></i> BACK
						</a>

            </div>
          </div>

        </div>

        <div class="col-lg-6">

          

        </div>
      </div>
    </section>

  </main>


 <!-- <form action="savecategory" method="post">
		CategoryName : <input type="text" name="categoryName"/>
		
		<br><br>
		<input type="submit" value="Save Category"/><br><br>
		<input type="button" value="Go back!" onclick="history.back()">
	
	</form>
	<br>
	<a href="listcategories">List Category</a><br><br>
	<a href="newsubcategory">New SubCategory</a> <br><br>
	<a href="sublistcategories">Sub List Categories</a><br><br>
	


</body> -->
</html>