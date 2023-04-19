<%@page import="com.grownited.bean.SubCategoryBean"%>
<%@page import="com.grownited.bean.CategoryBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="AllCss.jsp"></jsp:include>
<meta charset="ISO-8859-1">
<title>NewSubCategory</title>
</head>
<body>
<jsp:include page="AdminSideBar.jsp"></jsp:include>

<main id="main" class="main">
<jsp:include page="AdminHeader.jsp"></jsp:include>
    <div class="pagetitle">
      <h1>Add Activity Form</h1>
      <nav>
        <ol class="breadcrumb">
          
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-6">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Add New SubCategory</h5>
              
              <%
		List<CategoryBean> list = (List<CategoryBean>) request.getAttribute("list");

	%>
              

              <!-- General Form Elements -->
              <form action="savesubcategory" method="post">
                <div class="row mb-8">
                  <label for="inputText" class="col-sm-3 col-form-label">SubCategory Name</label>
                  <div class="col-sm-8">
                    <input type="text" class="form-control" name="SubcategoryName">
                  </div>
                </div>
                


                <div class="row mb-3">
                  <label class="col-sm-3 col-form-label">CategoryName</label>
                  <div class="col-sm-8">
                    <select class="form-select" aria-label="Default select example" name="categoryId">
                     
       <option  selected value="-1">Select Category</option>
			<%
				for (CategoryBean cb : list) {
			%>
			<option value="<%=cb.getCategoryId()%>">
				<%=cb.getCategoryName()%></option>
			<%
				}
			%>
		
                    </select>
                  </div>
                </div>

                

                <div class="row mb-3">
                  <label class="col-sm-3 col-form-label"></label>
                  <div class="col-sm-8">
                    <button type="submit" class="btn btn-primary" value="save SubCategory">Submit Form</button>
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
    

</body>
</html>
<%-- 	<%
		List<CategoryBean> list = (List<CategoryBean>) request.getAttribute("list");

	%>

	<form action="savesubcategory" method="post">
		SubCategoryName : <input type="text" name="SubcategoryName"/> 
		
		<br><BR>
		 Category <select name="categoryId">

			<%
				for (CategoryBean cb : list) {
			%>
			<option value="<%=cb.getCategoryId()%>">
				<%=cb.getCategoryName()%></option>
			<%
				}
			%>
		</select><br><br>
		
		<input type="submit" value="save SubCategory"/>
	</form> --%>