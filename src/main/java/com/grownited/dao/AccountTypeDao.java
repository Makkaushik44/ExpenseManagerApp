package com.grownited.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.grownited.bean.AccountTypeBean;



@Repository
public class AccountTypeDao {

	@Autowired
	JdbcTemplate stmt;

	public void insertAccountType(AccountTypeBean accountTypeBean) {
		
		String insertQuery ="insert into accounttype (accountTypeName) values (?)";
		
		stmt.update(insertQuery,accountTypeBean.getAccountTypeName());
		
	}
	public List<AccountTypeBean> getAllAccountType() {

		String selectQuery = "select * from accounttype ";

		List<AccountTypeBean> aclist =  stmt.query(selectQuery, new BeanPropertyRowMapper<AccountTypeBean>(AccountTypeBean.class));
		
		//c1 c2 c3 
		
		return aclist;
	}

}
