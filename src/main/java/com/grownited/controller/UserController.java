package com.grownited.controller;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.bean.ExpenseBean;
import com.grownited.bean.ExpenseChartBean;
import com.grownited.bean.UserBean;
import com.grownited.dao.HomeDao;
import com.grownited.dao.UserDao;


@Controller
public class UserController {
	
	@Autowired
	HomeDao homeDao;
	
	@Autowired
	UserDao userDao;
	
	
	
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
		 List<ExpenseChartBean> pieChartDataUser=homeDao.getCategoryStatsUser (userId);
		
		
		model.addAttribute("ExpenseUser", ExpenseUser);
	    model.addAttribute("UserMonthExpense", UserMonthExpense); 
		model.addAttribute("UserMonthIncome", UserMonthIncome); 
		model.addAttribute("pieChartDataUser", pieChartDataUser); 
		return "Home";
	}
	
	
	 @PostMapping("/updateprofile")
		public String updateExpense(UserBean userBean,HttpSession session) {
		 UserBean user = (UserBean)session.getAttribute("user");
		 user.setFirstName(userBean.getFirstName());
		 session.setAttribute("user", user);
		 
		 userDao.updateProfile(userBean);
			
			
			System.out.println(userBean.getFirstName());	// categoryName;
	 		
	     
			return "redirect:/myprofile";
		}

}
