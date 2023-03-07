package com.grownited.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.grownited.bean.CategoryBean;
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
         
        String joinQuery = "select c.categoryName , sc.categoryId,sc.subCategoryId,sc.subCategoryName,sc.deleted from category c , subcategory sc where c.categoryId = sc.categoryId and sc.deleted = false";

		List<SubCategoryBean> sublist =  stmt.query(joinQuery, new BeanPropertyRowMapper<SubCategoryBean>(SubCategoryBean.class));
		
		//c1 c2 c3 
		
		return sublist;
	}
	

	// list
	public SubCategoryBean getSubCategoryById(Integer subCategoryId) {
		SubCategoryBean subCategoryBean = null;

		try {
			subCategoryBean = stmt.queryForObject("select * from subcategory,category where subcategory.subCategoryId = ? and category.categoryId=subcategory.categoryId",
					new BeanPropertyRowMapper<SubCategoryBean>(SubCategoryBean.class), new Object[] { subCategoryId });
		} catch (Exception e) {
			System.out.println("SubCategoryDao :: getSubCategoryById()");
			System.out.println(e.getMessage());
		}
		return subCategoryBean;
	}

	// update

	// delete
	public void deleteSubCategory(Integer subCategroyId) {
		String updateQuery ="update subcategory set deleted=true where subCategoryId= ? ";
		stmt.update(updateQuery,subCategroyId);
	}
	

}
