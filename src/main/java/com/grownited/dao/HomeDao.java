package com.grownited.dao;

import java.util.Calendar;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class HomeDao {
	
	@Autowired
	JdbcTemplate stmt;
	
	public Integer getTotalExpenseForCurrentDateForUser(Integer userId) {
		String countQuery = "select sum(amount) from expense where date= ? and userId=?";

		// dd-mm-yyyy

		Calendar c = Calendar.getInstance();

		int ddd = c.get(Calendar.DATE);
		int mmm = c.get(Calendar.MONTH)+1;
		int yyy = c.get(Calendar.YEAR);

		String today = "";
		if(mmm<10) {
			today=yyy+"-0"+mmm+"-"+ddd;
		}else {
			today=yyy+"-"+mmm+"-"+ddd;
		}
		if(ddd<10) {
			today=yyy+"-0"+mmm+"-0"+ddd;
		}else {
			today=yyy+"-"+mmm+"-"+ddd;
		}

		System.out.println("CURRENT YEAR User => " + today);

		
		 return stmt.queryForObject(countQuery, Integer.class, new Object[] {today,userId });
		 
		
		
	}
	/*
	 * public Integer getTotalExpenseForCurrentMonth(Integer userId) { String
	 * countQuery = "select sum(amount) from expense where date like ";
	 * 
	 * // dd-mm-yyyy
	 * 
	 * Calendar c = Calendar.getInstance();
	 * 
	 * int mmm = c.get(Calendar.MONTH)+1;
	 * 
	 * String month = "%-0" + mmm;// 2023
	 * 
	 * 
	 * 
	 * 
	 * System.out.println("CURRENT MONTH => " + month);
	 * 
	 * return stmt.queryForObject(countQuery, Integer.class, new Object[] { month});
	 * 
	 * 
	 * }
	 */
	

	
}
