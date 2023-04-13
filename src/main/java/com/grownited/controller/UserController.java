package com.grownited.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


import com.grownited.dao.HomeDao;


@Controller
public class UserController {
	
	@Autowired
	HomeDao homeDao;
	
	@GetMapping("/home")
	public String home(Model model,HttpServletRequest request) {
		/*
		 * Cookie c1 = new Cookie("userId",userBea.getUserId()+"");
		 * 
		 * //add cookie response.addCookie(c1); session.setAttribute("userId",
		 * userBea.getUserId());
		 */
         int userId = -1;
		
		 Cookie c[] = request.getCookies();
		
			for(Cookie x : c) {
				if(x.getName().equals("userId")) {
					userId = Integer.parseInt(x.getValue());
				}
			}
		Integer ExpenseUser=homeDao.getTotalExpenseForCurrentDateForUser(userId);
		System.out.println(ExpenseUser);
		 Integer UserMonthExpense=homeDao.getTotalExpenseForCurrentMonth(userId); 
		 Integer UserMonthIncome=homeDao.getTotalIncomeForCurrentMonth(userId); 
		 
		
		
		model.addAttribute("ExpenseUser", ExpenseUser);
	    model.addAttribute("UserMonthExpense", UserMonthExpense); 
		model.addAttribute("UserMonthIncome", UserMonthIncome); 
		return "Home";
	}

}
