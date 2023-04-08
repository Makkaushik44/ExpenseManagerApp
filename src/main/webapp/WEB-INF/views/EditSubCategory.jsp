
<%@page import="com.grownited.bean.SubCategoryBean"%>
<%@page import="com.grownited.bean.CategoryBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ExpenseMangerApps | Edit SubCategory</title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>


	<jsp:include page="AdminSideBar.jsp"></jsp:include>


	<main id="main" class="main">
		<jsp:include page="AdminHeader.jsp"></jsp:include>
	<div class="pagetitle">
		<h1>Sub Category</h1>
		<nav>
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
				<li class="breadcrumb-item">SubCategory</li>
				<li class="breadcrumb-item active">Edit</li>
			</ol>
		</nav>
	</div>



	<section class="section">
		<div class="row">
			<div class="col-lg-12">

				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Edit SubCategory</h5>

						<%
							List<CategoryBean> list = (List<CategoryBean>) request.getAttribute("list");
							SubCategoryBean subCategoryBean = (SubCategoryBean) request.getAttribute("subCategoryBean");
						%>

						<form action="updatesubcategory" method="post">
							<input type="hidden" name="subcategoryId" value="<%=subCategoryBean.getSubcategoryId() %>"/>

							<div class="row mb-3">
								<label for="inputText" class="col-sm-2 col-form-label">SubCategoryName</label>
								<div class="col-sm-6">
									<input type="text" name="SubcategoryName"
										value="<%=subCategoryBean.getSubcategoryName()%>"
										class="form-control">
								</div>
							</div>

							<div class="row mb-3">
								<label class="col-sm-2 col-form-label">Category</label>
								<div class="col-sm-6">
									<select name="categoryId" id="categoryId" class="form-select"
										aria-label="Default select example">
										<option value="-1">Select Category</option>
										<%
											for (CategoryBean cb : list) {
										%>
										<option value="<%=cb.getCategoryId()%>"
											<%=cb.getCategoryId() == subCategoryBean.getCategoryId() ? "selected" : ""%>>
											<%=cb.getCategoryName()%></option>
										<%
											}
										%>
									</select>
								</div>
							</div>

							<div class="row mb-3">
								<div class="col-2"></div>
								<div class="col-2">
									<button class="btn btn-primary w-100" type="submit">Update
									</button>

								</div>
								<div class="col-2">
									<a class="btn btn-danger w-100" href="sublistcategories"
										type="button">Cancel</a>

								</div>

							</div>



						</form>



						<!-- Table with stripped rows -->

						<br> <a href="sublistcategories"> <i
							class="bi bi-arrow-left"></i> BACK
						</a>

					</div>
				</div>

			</div>
		</div>
	</section>
	</main>

	
	<jsp:include page="AllJs.jsp"></jsp:include>
	<script>
		function validateSubCategory() {
			categoryId = document.getElementById("categoryId");
			isError = false;
			if (categoryId.value == "-1") {
				isError = true;
			}
		}
	</script>

</body>
</html>