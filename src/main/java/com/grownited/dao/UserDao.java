package com.grownited.dao;

import java.util.Calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.grownited.bean.ExpenseBean;
import com.grownited.bean.ForgetPasswordBean;
import com.grownited.bean.LoginBean;
import com.grownited.bean.UpdatePasswordBean;
import com.grownited.bean.UserBean;

@Repository
public class UserDao {
	
	@Autowired //autowired use the data add automatically in dynamic 
	JdbcTemplate stmt;//new 
	
	//add customer -- signup 
	public void insertUser(UserBean userBean) {
		Calendar c = Calendar.getInstance();

		int ddd = c.get(Calendar.DATE);
		int mmm = c.get(Calendar.MONTH) + 1;
		int yyy = c.get(Calendar.YEAR);

		String today = "";

		if (mmm < 10) {
			today = ddd + "-0" + mmm + "-" + yyy;
		} else {
			today = ddd + "-" + mmm + "-" + yyy;
		}
		System.out.println("TODAY => " + today);
		//
		String insertQuery = "insert into users (firstName,lastName,email,password,DOB,gender,role,createdAt) values (?,?,?,?,?,?,?,?)";

		//role -> 2 for customer/buyer/user 
		stmt.update(insertQuery,userBean.getFirstName(),userBean.getLastName(),userBean.getEmail(),userBean.getPassword(),userBean.getDOB(),userBean.getGender(),2,today);//query execute 
		
		
	}
	
	public UserBean authenticateUser(LoginBean loginBean) {
		try {
			String loginQuery = "select * from users where email = ? and password = ? ";
			UserBean user = stmt.queryForObject(loginQuery, new BeanPropertyRowMapper<UserBean>(UserBean.class),new Object[] { loginBean.getEmail(), loginBean.getPassword() });

			return user;
		} catch (Exception e) {
			System.out.println("SMW --> UserDao::authenticateUser()");
			System.out.println(e.getMessage()); 
		}
		return null;
		
	}
	
	public UserBean findUserByEmail(ForgetPasswordBean forgetPasswordBean) {
		try {
			String loginQuery = "select * from users where email = ?  ";
			UserBean user = stmt.queryForObject(loginQuery, new BeanPropertyRowMapper<UserBean>(UserBean.class),new Object[] { forgetPasswordBean.getEmail() });

			return user;
		} catch (Exception e) {
			System.out.println("SMW --> UserDao::authenticateUser()");
			System.out.println(e.getMessage()); 
		}
		return null;
	}	
	
	public void updateOtp(String email,String otp) {
		String updateOtpQuery = "update users set otp = ? where email = ?";
		stmt.update(updateOtpQuery,otp,email);
       }
	
	public void updateMyPassword(UpdatePasswordBean upBean) {
		String updateQuery="update users set password=?, otp=? where email=?";
		stmt.update(updateQuery,upBean.getPassword(),"",upBean.getEmail());
	}
	
	public UserBean verifyOtpByEmail(UpdatePasswordBean upBean) {
		try {
			String otpQuery = "select * from users where email = ? and otp = ? ";
			UserBean user = stmt.queryForObject(otpQuery, new BeanPropertyRowMapper<UserBean>(UserBean.class),new Object[] { upBean.getEmail(), upBean.getOtp() });

			return user;
		} catch (Exception e) {
			System.out.println("SMW --> UserDao::authenticateUser() verifyotpbyemail");
			System.out.println(e.getMessage()); 
		}
		return null;
		
	}
	
	public UserBean getUserByEmail(String email) {
		String selectQuery = "select * from users where email  = ? ";
		try {
		return stmt.queryForObject(selectQuery, new BeanPropertyRowMapper<UserBean>(UserBean.class),new Object[] { email });
		}catch(Exception e) {
			System.out.println(e.getMessage());
			System.out.println("SMW --> UserDao:: getuserbyemail");
		}
		return null;
	}
	
	public void updateProfile(UserBean userBean) {
		System.out.println("hey this is update profile");
		
		stmt.update("update users set firstName = ?, lastName=?, email=?, DOB=? where userId=?",userBean.getFirstName(),userBean.getLastName(),userBean.getEmail(),userBean.getDOB(),userBean.getUserId());
		System.out.println("dao");
		System.out.println(userBean.getFirstName());
	}
	
	
	/*
	 * public UserBean getVerifyPassword(UpdatePasswordBean upBean, Integer userId)
	 * { String selectQuery =
	 * "select * from users where password  = ? as currentpassword and userId=?";
	 * try { return stmt.queryForObject(selectQuery, new
	 * BeanPropertyRowMapper<UserBean>(UserBean.class),new Object[] { upBean,userId
	 * }); }catch(Exception e) { System.out.println(e.getMessage());
	 * System.out.println("SMW --> UserDao:: getuserbypasswrod"); } return null; }
	 * 
	 * public void updateMyPasswordManual(UpdatePasswordBean upBean,Integer userId)
	 * { String updateQuery="update users set password=? where userId=?";
	 * stmt.update(updateQuery,upBean.getPassword(),userId); }
	 */

	
	
	
	
	
	
	
}
