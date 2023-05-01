package com.grownited.dao;

import java.util.Calendar;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.grownited.bean.ExpenseChartBean;

@Repository
public class HomeDao {

	@Autowired
	JdbcTemplate stmt;

	public Integer getTotalExpenseForCurrentDateForUser(Integer userId) {
		String countQuery = "select sum(amount) from expense where date= ? and userId=?";
		

		// dd-mm-yyyy

		Calendar c = Calendar.getInstance();

		int ddd = c.get(Calendar.DATE);
		int mmm = c.get(Calendar.MONTH) + 1;
		int yyy = c.get(Calendar.YEAR);

		String today = "";
		if (mmm < 10) {
			today = yyy + "-0" + mmm + "-" + ddd;
		} else {
			today = yyy + "-" + mmm + "-" + ddd;
		}
		if (ddd < 10) {
			today = yyy + "-0" + mmm + "-0" + ddd;
		} else {
			today = yyy + "-" + mmm + "-" + ddd;
		}

		System.out.println("CURRENT YEAR User => " + today);

		return stmt.queryForObject(countQuery, Integer.class, new Object[] { today, userId });

	}
	
	  public Integer getTotalExpenseForCurrentMonth(Integer userId) {
		
		  String   countQuery = "select sum(amount) from expense where userId=? and date like ?";
	  
	  // dd-mm-yyyy
		  Calendar c = Calendar.getInstance();

			int ddd = c.get(Calendar.DATE);
			int mmm = c.get(Calendar.MONTH) + 1;
			int yyy = c.get(Calendar.YEAR);

	  String  date="";
	
	
	if (mmm<10) {
			date = yyy + "-0" + mmm + "-%" ;
		} else {
			date= yyy + "-" + mmm + "-%" ;
		}
	  Integer sumExpenseMonth=0;
	 
	 
	  System.out.println("CURRENT MONTH => " + date);
	  
	  sumExpenseMonth=stmt.queryForObject(countQuery, Integer.class, new Object[] { userId,date});
	  
	  return sumExpenseMonth;
	 
	 }
	  
	  public Integer getTotalIncomeForCurrentMonth(Integer userId) {
			
		  String   countQuery = "select sum(amount) from income where userId=? and date like ?";
	  
	      //dd-mm-yyyy
		  Calendar c = Calendar.getInstance();

			int ddd = c.get(Calendar.DATE);
			int mmm = c.get(Calendar.MONTH) + 1;
			int yyy = c.get(Calendar.YEAR);

	  String  date="";
	
	
	if (mmm<10) {
			date = yyy + "-0" + mmm + "-%" ;
		} else {
			date= yyy + "-" + mmm + "-%" ;
		}
	  Integer sumExpenseMonth=0;
	 
	 
	  System.out.println("CURRENT MONTH => " + date);
	  
	  sumExpenseMonth=stmt.queryForObject(countQuery, Integer.class, new Object[] { userId,date});
	  
	  return sumExpenseMonth;
	 
	 }
	 
	  public List<ExpenseChartBean> getCategoryStatsUser(Integer userId) {
	 		
	 		String selectQ = "select c.categoryName, sum(amount) as expenseAmount from expense e,category c where e.categoryId=c.categoryId  and  userId=? and year(Date) = 2023  group by categoryName ";
	 		return stmt.query(selectQ, new BeanPropertyRowMapper<ExpenseChartBean>(ExpenseChartBean.class),new Object[] { userId});

	 	}
	  
		/*
		 * public List<ExpenseChartBean> getMonthWiseAverage(Integer userId) {
		 * 
		 * String
		 * selectQ="select avg(amount), MONTH(date) as month from expense group by month"
		 * ; return stmt.query(selectQ, new
		 * BeanPropertyRowMapper<ExpenseChartBean>(ExpenseChartBean.class),new Object[]
		 * {userId});
		 * 
		 * }
		 */
	

}
