package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.grownited.bean.ExpenseChartBean;
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
		Integer totalTransactionCount=adminDao.getTotalTransactionCountForCurrentDate();
		System.out.println(TodayExpense);
		List<ExpenseChartBean> chartData=adminDao.getExpenseStats();
		
		model.addAttribute("TodayExpense", TodayExpense);
		model.addAttribute("TotalExpense",TotalExpense);
		model.addAttribute("TotalUser",TotalUser);
		model.addAttribute("totalTransaction",totalTransactionCount);
		model.addAttribute("chartData",chartData);
		return "AdminDashboard";
	}

}
