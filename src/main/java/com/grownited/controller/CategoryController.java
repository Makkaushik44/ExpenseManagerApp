package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.bean.CategoryBean;
import com.grownited.dao.CategoryDao;

@Controller
public class CategoryController {
	
	@Autowired
	CategoryDao categoryDao;
	
	@GetMapping("/newcategory")
	public String newCategory() {
		
		return "NewCategory";
		
	}
	@PostMapping("/savecategory")
	public String  saveCategory(CategoryBean categoryBean) {
		System.out.println(categoryBean.getCategoryName());// categoryName;
		categoryDao.addCategory(categoryBean);
		return "redirect:/listcategories";
		
	}
	@GetMapping("/listcategories")
	public String listCategories(Model model) {

		// pull all category from db-table
		List<CategoryBean> list = categoryDao.getAllCategory();
		model.addAttribute("list",list);
		return "ListCategory";
	}
	
	@GetMapping("/deletecategory/{categoryId}")
	public String deleteCategory(@PathVariable("categoryId") Integer CategoryId) {
		
		categoryDao.deleteCategory(CategoryId);
		return "redirect:/listcategories";
	}

}
