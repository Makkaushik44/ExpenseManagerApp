package com.grownited.dao;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.grownited.bean.ExpenseBean;


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
		
		String joinQuery="select e.title,e.amount,e.date,e.description,a.accountTypeName,s.statusName,c.categoryName,sc.subCategoryName,v.vendorName from expense e, accountType a, status s, category c, subCategory sc, vendor v  where  e.categoryId=c.categoryId and e.subCategoryId=sc.subCategoryId and  e.vendorId=v.vendorId and  e.accountTypeId=a.accountTypeId and e.statusId= s.statusId  and userId = ?";

		List<ExpenseBean> expenselist =  stmt.query(joinQuery, new BeanPropertyRowMapper<ExpenseBean>(ExpenseBean.class),new Object[]{userId});
		
		
		
		return expenselist;

	}

	
}
