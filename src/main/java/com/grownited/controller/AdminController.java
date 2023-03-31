package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.grownited.dao.AdminDao;


@Controller
public class AdminController {
	
	@Autowired
	AdminDao adminDao;
	
	@GetMapping("/admindashboard")
	public String adminDashboard(Model model) {
		System.out.println("InSide admindashboard--url-metho--");
		
		Integer TodayExpense=adminDao.TotalExpenseForCurrentDate();
		Integer TotalExpense=adminDao.getToatalExpense();
		Integer TotalUser=adminDao.getTotalUserCountForCurrentYear();
		
		model.addAttribute("TodayExpense", TodayExpense);
		model.addAttribute("TotalExpense",TotalExpense);
		model.addAttribute("TotalUser",TotalUser);
		return "AdminDashboard";
	}

}
