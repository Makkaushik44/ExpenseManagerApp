package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.grownited.bean.SubCategoryBean;
import com.grownited.dao.CategoryDao;
import com.grownited.dao.SubCategoryDao;


@Controller
public class SubCategoryController {
	
	@Autowired
	  CategoryDao categoryDao;
	
	@Autowired
	SubCategoryDao subCategoryDao;
	
     @GetMapping("/newsubcategory")
     public String newSubCategory(Model model) {
    	 
    	 model.addAttribute("list", categoryDao.getAllActiveCategory());
    	 return "/NewSubCategory";
     }
     
     @PostMapping("/savesubcategory")
 	public String saveSubCategory(SubCategoryBean subCategoryBean) {
 		System.out.println(subCategoryBean.getSubcategoryName());	// categoryName;
 		System.out.println(subCategoryBean.getCategoryId());
 		
 		//dao 
 		//insert 
 	
		subCategoryDao.addSubCategory(subCategoryBean);//THIS IS QUERY TO ADD THE DATA IN DATABASE(VIA SUBCTAEGORYDAO)
 		
 		return "redirect:/sublistcategories";
 	}
     @GetMapping("/sublistcategories")
 	public String subListCategories(Model model) {

 		// pull all category from db-table
 		List<SubCategoryBean> sublist = subCategoryDao.getAllCategory();
 		model.addAttribute("sublist",sublist);
 		return "SubListCategory";
 	}
     
    @GetMapping("/deletesubcategory/{subCategoryId}")
    public String deleteSubCatagory(@PathVariable("subCategoryId") Integer SubCategoryId) {
    	
    	subCategoryDao.deleteSubCategory(SubCategoryId);
    	return "redirect:/sublistcategories";
    }
    
    @GetMapping("/viewsubcategory/{subCategoryId}")
    public String viewSubCategory(@PathVariable("subCategoryId") Integer SubCategoyId,Model model) {
    	SubCategoryBean subCategoryBean =subCategoryDao.getSubCategoryById(SubCategoyId);
    	model.addAttribute("subCategoryBean",subCategoryBean);
		return "ViewSubCategory";
    	
    }
     
    @GetMapping("/editsubcategory")
	public String editSubCategory(@RequestParam("subCategoryId") Integer subCategoryId,Model model) {
         
    
		SubCategoryBean subCategoryBean = subCategoryDao.getSubCategoryById(subCategoryId);
		model.addAttribute("subCategoryBean",subCategoryBean);
		model.addAttribute("list", categoryDao.getAllCategory());
		return "EditSubCategory";
	}

	@PostMapping("/updatesubcategory")
	public String updateSubCategory(SubCategoryBean subCategoryBean) {
		subCategoryDao.updateSubCategory(subCategoryBean);
		System.out.println("this is controller");
		System.out.println(subCategoryBean.getSubcategoryName());
		System.out.println(subCategoryBean.getCategoryId());// categoryName;
 		System.out.println(subCategoryBean.getCategoryName());
     
		return "redirect:/sublistcategories";
	}

    
    
}
