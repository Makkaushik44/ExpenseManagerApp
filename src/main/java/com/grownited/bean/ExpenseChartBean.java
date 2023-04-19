package com.grownited.bean;

public class ExpenseChartBean {

	
	String month;
    Integer userId;
	String  categoryId;
	String categoryName;
	Long expenseAmount;

	 

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public Long getExpenseAmount() {
		return expenseAmount;
	}

	public void setExpenseAmount(Long expenseAmount) {
		this.expenseAmount = expenseAmount;
	}

	public String getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}
    
	

	
}
