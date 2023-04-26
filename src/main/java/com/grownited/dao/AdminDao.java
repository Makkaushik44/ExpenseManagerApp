package com.grownited.dao;

import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.grownited.bean.ExpenseChartBean;
import com.grownited.bean.ProfileBean;
import com.grownited.bean.UserBean;

@Repository
public class AdminDao {

	@Autowired
	JdbcTemplate stmt;
	

	
	
	public Integer TotalExpenseForCurrentDate() {
		String countQuery = "select sum(amount) from expense where date= ?";

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

		System.out.println("CURRENT YEAR => " + today);

  	return stmt.queryForObject(countQuery, Integer.class, new Object[] { today });
		
	}
	
	public Integer getToatalExpense() {
		
		
		 String   countQuery = "select sum(amount) from expense where  date like ?";
		  
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
		  
		  sumExpenseMonth=stmt.queryForObject(countQuery, Integer.class, new Object[] {date});
		  
		  return sumExpenseMonth;
	}

	public Integer getTotalUserCountForCurrentYear() {
		String countQuery = "select count(*) from users where createdAt like ?";

		// dd-mm-yyyy

		Calendar c = Calendar.getInstance();

		int yyy = c.get(Calendar.YEAR);

		String today = "%-" + yyy;// 2023

		System.out.println("CURRENT YEAR => " + today);

		return stmt.queryForObject(countQuery, Integer.class, new Object[] { today });
		
		
	}
	public Integer getTotalTransactionCountForCurrentDate() {


		String countQuery = "select count(*) from expense where date = ?";

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
		System.out.println("TODAY => " + today);

		return stmt.queryForObject(countQuery, Integer.class, new Object[] { today });

	}
	
	//this is for admin side bar chart query
     public List<ExpenseChartBean> getExpenseStats() {
		
		String selectQ = "select monthname(date) as month , sum(amount) as expenseAmount from expense where year(Date) = 2023 group by monthname(date) ";
		return stmt.query(selectQ, new BeanPropertyRowMapper<ExpenseChartBean>(ExpenseChartBean.class));

	}
     
     //THIS IS FOR PIE CHART IN ADMIN SIDES
     public List<ExpenseChartBean> getCategoryStats() {
 		
 		String selectQ = "select c.categoryName  , sum(amount) as expenseAmount from expense e,category c where e.categoryId=c.categoryId  and year(Date) = 2023 group by categoryName ";
 		return stmt.query(selectQ, new BeanPropertyRowMapper<ExpenseChartBean>(ExpenseChartBean.class));

 	}
     
     public void updateImageUrl(ProfileBean profileBean) {
    	 
 		stmt.update("update users set imageUrl = ?,firstName=? where userId = ?",profileBean.getImageUrl(),profileBean.getFirstName(),profileBean.getUserId());
 		System.out.println(profileBean.getFirstName());
 	}
     
     //User List
     public List<UserBean> getAllUser() {

 		String selectQuery = "select * from users";

 		List<UserBean> userList =  stmt.query(selectQuery, new BeanPropertyRowMapper<UserBean>(UserBean.class));
 		
 		//c1 c2 c3 
 		
 		return userList;
 	}
     
     
     
}
