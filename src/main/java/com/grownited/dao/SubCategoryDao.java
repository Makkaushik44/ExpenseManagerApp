package com.grownited.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.grownited.bean.SubCategoryBean;

@Repository
public class SubCategoryDao {
	
	@Autowired
	JdbcTemplate stmt;
	
	public void addSubCategory(SubCategoryBean subCategoryBean) { 
		//this is insert query to insert record in database
		String insertQuery = "insert into subcategory (SubcategoryName,categoryId,deleted) values (?,?,?)";

		//this is dyanamically update the data(user like enter the data ...)
		stmt.update(insertQuery, subCategoryBean.getSubcategoryName(),subCategoryBean.getCategoryId(), false);//query execute 
		
		
	}
	public List<SubCategoryBean> getAllCategory() {

		String selectQuery = "select * from subcategory where deleted = false";

		List<SubCategoryBean> sublist =  stmt.query(selectQuery, new BeanPropertyRowMapper<SubCategoryBean>(SubCategoryBean.class));
		
		//c1 c2 c3 
		
		return sublist;
	}
	

	// list

	// update

	// delete
	public void deleteSubCategory(Integer subCategroyId) {
		String updateQuery ="update subcategory set deleted=true where subCategoryId= ? ";
		stmt.update(updateQuery,subCategroyId);
	}
	

}
