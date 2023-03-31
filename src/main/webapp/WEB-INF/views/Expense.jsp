<%@page import="com.grownited.bean.SubCategoryBean"%>
<%@page import="com.grownited.bean.VendorBean"%>
<%@page import="com.grownited.bean.CategoryBean"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.grownited.bean.AccountTypeBean"%>
<%@page import="com.grownited.bean.StatusBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="AllCss.jsp"></jsp:include>
<meta charset="ISO-8859-1">
<title>Add Income</title>
</head>
<body>
<jsp:include page="UserSideBar.jsp"></jsp:include>
<main id="main" class="main">
<jsp:include page="AdminHeader.jsp"></jsp:include>
    <div class="pagetitle">
      <h1>Form Elements</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item">Forms</li>
          <li class="breadcrumb-item active">Elements</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
 
    <section class="section">
    
      <div class="row">
     <div class="col-lg-0"></div>
        <div class="col-lg-8">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">General Form Elements</h5>
<%
		List<CategoryBean> list = (List<CategoryBean>) request.getAttribute("list");
        List<SubCategoryBean> sublist = (List<SubCategoryBean>) request.getAttribute("sublist");
        List<StatusBean> statusList = (List<StatusBean>) request.getAttribute("statusList");
        List<AccountTypeBean> aclist = (List<AccountTypeBean>) request.getAttribute("aclist");
        List<VendorBean> vendorlist = (List<VendorBean>) request.getAttribute("vendorlist");
	%>
	<%
						Calendar c = Calendar.getInstance(); 
						int d = c.get(c.DAY_OF_MONTH); //07 
						int m = c.get(c.MONTH)+1;//03
						String mon = "";
						String dt = "";
						if(m<=9){
							mon = 0+""+m; 
						}else{
							mon = m+"";
						}
						if(d <= 9){
							dt = 0+""+d;
						}else{
							dt = d+"";
						}
						int y = c.get(c.YEAR);//2023 
						System.out.println(y+"-"+m+"-"+d);
					%>
		
		
	
	
              <!-- General Form Elements -->
              <form  action="saveexpense" method="post">
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label">Title</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="title">
                  </div>
                </div>
                
                
                <div class="row mb-3">
                  <label for="inputDate" class="col-sm-2 col-form-label">Date</label>
                  <div class="col-sm-10">
                    <input type="date" id="myDate" name = "date" value="<%=y+"-"+mon+"-"+dt%>" class="form-control" name="Date">
                  </div>
                </div>
                
             
            
                <div class="row mb-3">
                  <label class="col-sm-2 col-form-label">CategoryName</label>
                  <div class="col-sm-10">
                    <select class="form-select" aria-label="Default select example" name="categoryId">
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
                  <label class="col-sm-2 col-form-label">SubCategoryName</label>
                  <div class="col-sm-10">
                    <select class="form-select" aria-label="Default select example" name="subCategoryId">
           	<%
				for (SubCategoryBean scb : sublist) {
			%>
			<option value="<%=scb.getSubcategoryId()%>">
				<%=scb.getSubcategoryName()%></option>
			<%
				}
			%>	
                    </select>
                  </div>
                </div>
                
                <div class="row mb-3">
                  <label class="col-sm-2 col-form-label">VendorName</label>
                  <div class="col-sm-10">
                    <select class="form-select" aria-label="Default select example" name="vendorId">
          <%
				for (VendorBean vb : vendorlist) {
			%>
			<option value="<%=vb.getVendorId()%>">
				<%=vb.getVendorName()%></option>
			<%
				}
			%>	
                    </select>
                  </div>
                </div>
                
                 <div class="row mb-3">
                  <label for="inputNumber" class="col-sm-2 col-form-label">Amount</label>
                  <div class="col-sm-10">
                    <input type="number" class="form-control" name="amount">
                  </div>
                </div>
                
                
                  <div class="row mb-3">
                  <label class="col-sm-2 col-form-label">StatusName</label>
                  <div class="col-sm-10">
                    <select class="form-select" aria-label="Default select example" name="statusId">
                <%
				for (StatusBean sb: statusList) {
			%>
			<option value="<%=sb.getStatusId()%>">
				<%=sb.getStatusName()%></option>
			<%
				}
			%>
                    </select>
                  </div>
                </div>
                
                
                  <div class="row mb-3">
                  <label class="col-sm-2 col-form-label">AccountTypeName</label>
                  <div class="col-sm-10">
                    <select class="form-select" aria-label="Default select example" name="accountTypeId">
                     <%
				for (AccountTypeBean atb: aclist) {
			%>
			<option value="<%=atb.getAccountTypeId()%>">
				<%=atb.getAccountTypeName()%></option>
			<%
				}
			%>		
                    </select>
                  </div>
                </div>
                 
                 
                
                
                   
                <div class="row mb-3">
                  <label for="inputPassword" class="col-sm-2 col-form-label">Description</label>
                  <div class="col-sm-10">
                    <textarea class="form-control"  name="description" style="height: 100px"></textarea>
                  </div>
                </div>
                
                

                


                <div class="row mb-3">
                  <label class="col-sm-2 col-form-label"></label>
                  <div class="col-sm-10">
                    <button type="submit" class="btn btn-primary" value="save Income">Submit Form</button>
                    <a type="button" href="listexpense" class="btn btn-danger">Cancel</a>
                  </div>
                </div>

              </form><!-- End General Form Elements -->

            </div>
          </div>

        </div>

        
      </div>
    </section>

  </main>
   <jsp:include page="AllJs.jsp"></jsp:include>

</body>
</html>




<%-- <%@page import="com.grownited.bean.VendorBean"%>
<%@page import="com.grownited.bean.AccountTypeBean"%>
<%@page import="com.grownited.bean.StatusBean"%>
<%@page import="com.grownited.bean.SubCategoryBean"%>
<%@page import="com.grownited.bean.CategoryBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expenses</title>
</head>
<body>
<%
		List<CategoryBean> list = (List<CategoryBean>) request.getAttribute("list");
        List<SubCategoryBean> sublist = (List<SubCategoryBean>) request.getAttribute("sublist");
        List<StatusBean> statusList = (List<StatusBean>) request.getAttribute("statusList");
        List<AccountTypeBean> aclist = (List<AccountTypeBean>) request.getAttribute("aclist");
        List<VendorBean> vendorlist = (List<VendorBean>) request.getAttribute("vendorlist");
	%>
	
<form action="saveexpense" method="post" >
		 
Title:<input type="text" name="title"><br><br>
Date:<input type="date" name="Date"><br><br>

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
		
SubCategoryName:<select name="subCategoryId">

			<%
				for (SubCategoryBean scb : sublist) {
			%>
			<option value="<%=scb.getSubcategoryId()%>">
				<%=scb.getSubcategoryName()%></option>
			<%
				}
			%>
		</select><br><br>
Vendor :<select name="vendorId">

			<%
				for (VendorBean vb : vendorlist) {
			%>
			<option value="<%=vb.getVendorId()%>">
				<%=vb.getVendorName()%></option>
			<%
				}
			%>
		</select><br><br>
Enter Amount:<input type="number" name="amount"><br><br>
Status :<select name="statusId">

			<%
				for (StatusBean sb: statusList) {
			%>
			<option value="<%=sb.getStatusId()%>">
				<%=sb.getStatusName()%></option>
			<%
				}
			%>
		</select><br><br>

		
AccountType:<select name="accountTypeId">

			<%
				for (AccountTypeBean atb: aclist) {
			%>
			<option value="<%=atb.getAccountTypeId()%>">
				<%=atb.getAccountTypeName()%></option>
			<%
				}
			%>
		</select><br><br>
Description: <textarea name="description" rows="4" cols="40"></textarea><br>
		

			
		
		<input type="submit" value="Save Expense"/>
	</form>


</body>
</html> --%>