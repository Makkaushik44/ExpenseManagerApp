<%@page import="java.util.Calendar"%>
<%@page import="com.grownited.bean.ExpenseBean"%>
<%@page import="com.grownited.bean.VendorBean"%>
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
<jsp:include page="AllCss.jsp"></jsp:include>
<meta charset="ISO-8859-1">
<title>Add Expense</title>
</head>
<body>
<jsp:include page="UserSideBar.jsp"></jsp:include>
<main id="main" class="main">
<jsp:include page="AdminHeader.jsp"></jsp:include>
    <div class="pagetitle">
      <h1>Expense Form</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item">Manage Data</li>
          <li class="breadcrumb-item active">Expense</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
 
    <section class="section">
    
      <div class="row">
     <div class="col-lg-0"></div>
        <div class="col-lg-8">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Expense Form</h5>
<%
		List<CategoryBean> list = (List<CategoryBean>) request.getAttribute("list");
        List<SubCategoryBean> sublist = (List<SubCategoryBean>) request.getAttribute("sublist");
        List<StatusBean> statusList = (List<StatusBean>) request.getAttribute("statusList");
        List<AccountTypeBean> aclist = (List<AccountTypeBean>) request.getAttribute("aclist");
        List<VendorBean> vendorlist = (List<VendorBean>) request.getAttribute("vendorlist");
    	ExpenseBean expenseBean = (ExpenseBean) request.getAttribute("expenseBean");
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
              <form  id="editexpense" action="updateexpense" method="post" >
              <input type="hidden" name="expenseId" value="<%=expenseBean.getExpenseId() %>"/>
              
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label">Title</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" value="<%=expenseBean.getTitle()%>" name="title">
                  </div>
                </div>
                
                
                <div class="row mb-3">
                  <label for="inputDate" class="col-sm-2 col-form-label">Date</label>
                  <div class="col-sm-10">
                    <input type="date" id="myDate" name = "date" value="<%=expenseBean.getDate() %>" class="form-control" name="Date">
                  </div>
                </div>
                
             
            
                <div class="row mb-3">
                  <label class="col-sm-2 col-form-label">CategoryName</label>
                  <div class="col-sm-10">
                    <select class="form-select" aria-label="Default select example"  name="categoryId">
            <%
				for (CategoryBean cb : list) { 
				%>
			<option value="<%=cb.getCategoryId()%>"
			<%=cb.getCategoryId() ==expenseBean.getCategoryId() ? "selected" : ""%>>
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
			<option value="<%=scb.getSubcategoryId()%>"
			<%=scb.getSubcategoryId() ==expenseBean.getSubCategoryId() ? "selected" : ""%>>
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
			<option value="<%=vb.getVendorId()%>"
			<%=vb.getVendorId() ==expenseBean.getVendorId() ? "selected" : ""%>>
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
                    <input type="number" class="form-control" value="<%=expenseBean.getAmount()%>" name="amount">
                  </div>
                </div>
                
                
                  <div class="row mb-3">
                  <label class="col-sm-2 col-form-label">StatusName</label>
                  <div class="col-sm-10">
                    <select class="form-select" aria-label="Default select example" name="statusId">
                <%
				for (StatusBean sb: statusList) {
			%>
			<option value="<%=sb.getStatusId()%>"
			<%=sb.getStatusId() ==expenseBean.getStatusId() ? "selected" : ""%>>
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
                    <textarea class="form-control"  name="description"  style="height: 100px"><%=expenseBean.getDescription()%></textarea>
                  </div>
                </div>
                
                

               

                <div class="row mb-3">
                  <label class="col-sm-2 col-form-label"></label>
                  <div class="col-sm-10">
                    <button type="submit" class="btn btn-primary" value="update expense">Submit Form</button>
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