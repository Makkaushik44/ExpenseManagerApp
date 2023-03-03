package com.grownited.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.grownited.bean.CategoryBean;


@Repository
public class CategoryDao {

	@Autowired
	JdbcTemplate stmt;
	
	public void addCategory(CategoryBean categoryBean) {
		//this is insert query to insert record in database
		String insertQuery = "insert into category (categoryName,deleted) values (?,?)";

		//this is dyanamically update the data(user like enter the data ...)
		stmt.update(insertQuery, categoryBean.getCategoryName(), false);//query execute 
		
		
	}

	public List<CategoryBean> getAllCategory() {

		String selectQuery = "select * from category where deleted = false";

		List<CategoryBean> list =  stmt.query(selectQuery, new BeanPropertyRowMapper<CategoryBean>(CategoryBean.class));
		
		//c1 c2 c3 
		
		return list;
	}
	
	public void deleteCategory(Integer categroyId) {
		String updateQuery ="update category set deleted=true where categoryId= ? ";
		stmt.update(updateQuery,categroyId);
	}

	// list

	// update

	// delete
}
