package com.grownited.controller;


import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grownited.bean.AccountTypeBean;
import com.grownited.bean.CategoryBean;
import com.grownited.bean.ExpenseBean;
import com.grownited.bean.StatusBean;
import com.grownited.bean.SubCategoryBean;
import com.grownited.bean.VendorBean;
import com.grownited.dao.AccountTypeDao;
import com.grownited.dao.CategoryDao;
import com.grownited.dao.ExpenseDao;
import com.grownited.dao.StatusDao;
import com.grownited.dao.SubCategoryDao;
import com.grownited.dao.VendorDao;

@Controller
public class ExpenseController {
	
	@Autowired
	ExpenseDao expenseDao;
	
	@Autowired
	StatusDao statusDao;
	
	@Autowired
	CategoryDao categoryDao;
	
	@Autowired
	SubCategoryDao subCategoryDao;
	
	@Autowired
	AccountTypeDao accountyTypeDao;
	
	@Autowired
	VendorDao vendorDao;
	
	
	
	@GetMapping("/expense")
	public String expense(Model model) {
		List<CategoryBean> list = categoryDao.getAllCategory();
		 model.addAttribute("list", list);
		 
		 List<SubCategoryBean> sublist = subCategoryDao.getAllCategory();
		 model.addAttribute("sublist", sublist);
		 
		 List<StatusBean> statusList =statusDao.getAllStatus();
		 model.addAttribute("statusList", statusList);
		 
		 List<AccountTypeBean> aclist = accountyTypeDao.getAllAccountType();
		 model.addAttribute("aclist",aclist);
		 
		 List<VendorBean> vendorlist =vendorDao.getAllVendor();
		 model.addAttribute("vendorlist",vendorlist);
		
		return "Expense";
	}
	
	@PostMapping("/saveexpense")
	public String saveExpense(ExpenseBean expenseBean,HttpServletRequest request,Model model) {
		// cookie name
					// cookie userid
					int userId=-1;
					// read all cookies from request
					String firstName="";
					Cookie c[] = request.getCookies();//jSEssionId userId octo firstName 

					for (Cookie x : c) {// jsessionid userId firstname
						if (x.getName().equals("userId")) {
							userId = Integer.parseInt(x.getValue());
						}
						if (x.getName().equals("firstName")) {
							firstName = x.getValue();
						}
					}
					 
					System.out.println("userId -> " + userId);
					System.out.println("firstName -> " + firstName);
					
					List<CategoryBean> list = categoryDao.getAllCategory();
					 model.addAttribute("list", list);
					 
					 List<SubCategoryBean> sublist = subCategoryDao.getAllCategory();
					 model.addAttribute("sublist", sublist);
					 
					 List<StatusBean> statusList =statusDao.getAllStatus();
					 model.addAttribute("statusList", statusList);
					 
					 List<AccountTypeBean> aclist = accountyTypeDao.getAllAccountType();
					 model.addAttribute("aclist",aclist);
					 
					 List<VendorBean> vendorlist =vendorDao.getAllVendor();
					 model.addAttribute("vendorlist",vendorlist);
		
		expenseBean.setUserId(userId);
		expenseDao.addExpense(expenseBean);
		return "redirect:/listexpense";
	}
	@GetMapping("/listexpense")
	public String listExpense(Model model,ExpenseBean expenseBean,HttpServletRequest request) {
           
		
		// cookie userid
		int userId=-1;
		// read all cookies from request
		String firstName="";
		Cookie c[] = request.getCookies();//jSEssionId userId octo firstName 

		for (Cookie x : c) {// jsessionid userId firstname
			if (x.getName().equals("userId")) {
				userId = Integer.parseInt(x.getValue());
			}
			if (x.getName().equals("firstName")) {
				firstName = x.getValue();
			}
		}
		// pull all category from db-table
		expenseBean.setUserId(userId);
		List<ExpenseBean> expenselist = expenseDao.getAllExpense(expenseBean, userId);
		model.addAttribute("expenselist",expenselist);
		return "ListExpense";
	}
     
	
	
	 @GetMapping("/editexpense")
	 public String editExpense(@RequestParam("expenseId") Integer expenseId,Model model) {
		 
		 List<CategoryBean> list = categoryDao.getAllActiveCategory();
		 model.addAttribute("list", list);
		 
		 List<SubCategoryBean> sublist = subCategoryDao.getAllCategory();
		 model.addAttribute("sublist", sublist);
		 
		 List<StatusBean> statusList =statusDao.getAllStatus();
		 model.addAttribute("statusList", statusList);
		 
		 List<AccountTypeBean> aclist = accountyTypeDao.getAllAccountType();
		 model.addAttribute("aclist",aclist);
		 
		 List<VendorBean> vendorlist =vendorDao.getAllVendor();
		 model.addAttribute("vendorlist",vendorlist);
		 
	 ExpenseBean expenseBean = expenseDao.getExpenseById(expenseId);//12
	  model.addAttribute("expenseBean", expenseBean); 
	  
	  return "EditExpense";
	  }
	 @PostMapping("/updateexpense")
		public String updateExpense(ExpenseBean expenseBean) {
			expenseDao.updateExpense(expenseBean);
			System.out.println(expenseBean.getCategoryName());	// categoryName;
	 		System.out.println(expenseBean.getAmount());
	     
			return "redirect:/listexpense";
		}
	 
	 @GetMapping("viewexpense/{expenseId}")
		public String viewExpense(@PathVariable("expenseId") Integer expenseId, Model model) {
			ExpenseBean expenseBean = expenseDao.getExpenseById(expenseId);
			model.addAttribute("expenseBean",expenseBean);
			System.out.println("hey this is view");
			System.out.println(expenseBean.getCategoryName());
			return "ViewExpense";
		}
	 
	
	 
	
	
}
