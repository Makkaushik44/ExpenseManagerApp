package com.grownited.controller;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.bean.AccountTypeBean;
import com.grownited.bean.IncomeBean;
import com.grownited.bean.StatusBean;
import com.grownited.dao.AccountTypeDao;
import com.grownited.dao.IncomeDao;
import com.grownited.dao.StatusDao;

@Controller
public class IncomeController {
	
	@Autowired
	AccountTypeDao accountTypeDao;
	
	@Autowired
	StatusDao statusDao;
	
	@Autowired
	IncomeDao incomeDao;
	
	@GetMapping("/income")
	public String income(Model model) {
		List<StatusBean> statusList =statusDao.getAllStatus();
		 model.addAttribute("statusList", statusList);
		 
		 List<AccountTypeBean> aclist = accountTypeDao.getAllAccountType();
		 model.addAttribute("aclist",aclist);
		 

		return "Income";
	}
	
	@PostMapping("/saveincome")
	public String saveIncome(IncomeBean incomeBean,Model model,HttpServletRequest request) {
		
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
		incomeBean.setUserId(userId);
		
		List<StatusBean> statusList =statusDao.getAllStatus();
		 model.addAttribute("statusList", statusList);
		 
		 List<AccountTypeBean> aclist = accountTypeDao.getAllAccountType();
		 model.addAttribute("aclist",aclist);
		
		System.out.println(incomeBean.getTitle());
		
		incomeDao.addIncome(incomeBean);
		return "Income";
	}
	@GetMapping("/listincome")
	public String listIncome(Model model,IncomeBean incomeBean,HttpServletRequest request) {
           
		
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
		incomeBean.setUserId(userId);
		List<IncomeBean> incomelist = incomeDao.getAllIncome(incomeBean, userId);
		model.addAttribute("incomelist",incomelist);
		return "ListIncome";
	}


}
