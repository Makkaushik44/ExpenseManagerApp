package com.grownited.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.grownited.bean.ExpenseBean;
import com.grownited.bean.IncomeBean;

@Repository
public class IncomeDao {

	@Autowired
	JdbcTemplate stmt;
	
	public void addIncome(IncomeBean incomeBean) {
		
		String insertQuery="insert into income(title,date,userId,accountTypeId,statusId,amount,description) values (?,?,?,?,?,?,?)";
		
		
		stmt.update(insertQuery,incomeBean.getTitle(), incomeBean.getDate(),incomeBean.getUserId(),incomeBean.getAccountTypeId(),incomeBean.getStatusId(),incomeBean.getAmount(),incomeBean.getDescription());
	}
	
	public List<IncomeBean> getAllIncome(IncomeBean incomeBean,Integer userId) {
		/* String selectQuery = "select * from income where userId=? "; */
		
		String joinQuery=" select i.title, i.amount,i.date,i.description, a.accountTypeName, s.statusName from income i, accountType a, status s where i.accountTypeId=a.accountTypeId and s.statusId= i.statusId and userId = ?";

		List<IncomeBean> incomelist =  stmt.query(joinQuery, new BeanPropertyRowMapper<IncomeBean>(IncomeBean.class),new Object[] {userId});
		
		
		return incomelist;

	}
}