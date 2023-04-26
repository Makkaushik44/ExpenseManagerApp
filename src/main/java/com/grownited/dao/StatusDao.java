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
	  
	  String insertQuery = "insert into status (statusName,deleted) values (?,?)";
	  
	  stmt.update(insertQuery, statusBean.getStatusName(),false);
  }
  
  public List<StatusBean> getAllStatus() {

		String selectQuery = "select * from status where deleted=false ";

		List<StatusBean> statusList =  stmt.query(selectQuery, new BeanPropertyRowMapper<StatusBean>(StatusBean.class));
		
		//c1 c2 c3 
		
		return statusList;
	}
  
	
      public void deleteStatus(Integer statusId) {
		String updateQuery ="update status set deleted=true where statusId= ? ";
		stmt.update(updateQuery,statusId);
	}
  
}
