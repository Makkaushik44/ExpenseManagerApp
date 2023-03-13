package com.grownited.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;


import com.grownited.bean.StatusBean;

@Repository
public class StatusDao {
	
	@Autowired
	JdbcTemplate stmt;
	
  public void insertStatus(StatusBean statusBean) {
	  
	  String insertQuery = "insert into status (statusName) values (?)";
	  
	  stmt.update(insertQuery, statusBean.getStatusName());
  }
  
  public List<StatusBean> getAllStatus() {

		String selectQuery = "select * from status ";

		List<StatusBean> statusList =  stmt.query(selectQuery, new BeanPropertyRowMapper<StatusBean>(StatusBean.class));
		
		//c1 c2 c3 
		
		return statusList;
	}

}
