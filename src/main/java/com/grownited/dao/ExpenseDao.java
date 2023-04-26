package com.grownited.dao;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.grownited.bean.CategoryBean;
import com.grownited.bean.ExpenseBean;
import com.grownited.bean.SubCategoryBean;

import ch.qos.logback.core.recovery.ResilientSyslogOutputStream;


@Repository
public class ExpenseDao {
	
	@Autowired
	JdbcTemplate stmt;
	
    
	public void addExpense(ExpenseBean expenseBean ) {
		
		
	
		String insertQuery="insert into expense(title,categoryId,subCategoryId,vendorId,accounttypeId,statusId,amount,date,description,userId) values (?,?,?,?,?,?,?,?,?,?)";
		
		stmt.update(insertQuery, expenseBean.getTitle(),expenseBean.getCategoryId(), expenseBean.getSubCategoryId(),expenseBean.getVendorId(),expenseBean.getAccountTypeId(),expenseBean.getStatusId(),expenseBean.getAmount(),expenseBean.getDate(),expenseBean.getDescription(),expenseBean.getUserId());//query execute 
	}
	
	

	public List<ExpenseBean> getAllExpense(ExpenseBean expenseBean,Integer userId) {
		/* String selectQuery = "select * from expense where userId=? "; */
		
		String joinQuery="select e.title,e.amount,e.expenseId , e.date,e.description,a.accountTypeName,s.statusName,c.categoryName,sc.subCategoryName,v.vendorName from expense e, accountType a, status s, category c, subCategory sc, vendor v  where  e.categoryId=c.categoryId and e.subCategoryId=sc.subCategoryId and  e.vendorId=v.vendorId and  e.accountTypeId=a.accountTypeId and e.statusId= s.statusId   and userId = ?";

		List<ExpenseBean> expenselist =  stmt.query(joinQuery, new BeanPropertyRowMapper<ExpenseBean>(ExpenseBean.class),new Object[]{userId});
		
		
		
		return expenselist;

	}
	
	
	//this method to help get expenseid and edit the our expense
	
	  public ExpenseBean getExpenseById(Integer expenseId) {
		  ExpenseBean expenseBean = null;
	  
	  try {
		  expenseBean =stmt.queryForObject("select * from expense,category,subcategory,vendor,accountType,status where expense.expenseId = ? and category.categoryId=expense.categoryId and subCategory.subCategoryId=expense.subCategoryId and vendor.vendorId=expense.vendorId  and accountType.accountTypeId=expense.accountTypeId and status.statusId=expense.statusId", new
	  BeanPropertyRowMapper<ExpenseBean>(ExpenseBean.class), new Object[] {
	  expenseId }); } catch (Exception e) {
	  System.out.println("CategoryDao :: getExpenseId()");
	  System.out.println(e.getMessage()); } 
	  
	  
	  return expenseBean; 
	  }

		// update
		public void updateExpense(ExpenseBean expenseBean) {
			System.out.println("hey this is update expense");
			stmt.update("update expense set title = ?, categoryId = ?,Date=?, subCategoryId=?, vendorId=?,Amount=?,statusId=?, accountTypeId=? where expenseId = ? ",expenseBean.getTitle(),expenseBean.getCategoryId(),expenseBean.getDate(),expenseBean.getSubCategoryId(),expenseBean.getVendorId(),expenseBean.getAmount(),expenseBean.getStatusId(),expenseBean.getAccountTypeId(),expenseBean.getExpenseId());
			System.out.println("dao");
			System.out.println(expenseBean.getAmount());
		}

	
}
