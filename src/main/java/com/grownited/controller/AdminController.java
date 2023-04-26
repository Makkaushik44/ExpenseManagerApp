package com.grownited.controller;


import java.io.File;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.bean.ExpenseChartBean;
import com.grownited.bean.ProfileBean;
import com.grownited.bean.UserBean;
import com.grownited.dao.AdminDao;
import com.grownited.dao.UserDao;




@Controller
public class AdminController {
	
	@Autowired
	AdminDao adminDao;
	
	@Autowired
	UserDao userDao;
	
	@GetMapping("/admindashboard")
	public String adminDashboard(Model model) {
		System.out.println("InSide admindashboard--url-metho--");
		
		Integer TodayExpense=adminDao.TotalExpenseForCurrentDate();
		Integer TotalExpense=adminDao.getToatalExpense();
		Integer TotalUser=adminDao.getTotalUserCountForCurrentYear();
		Integer totalTransactionCount=adminDao.getTotalTransactionCountForCurrentDate();
		
		System.out.println(TodayExpense);
		List<ExpenseChartBean> chartData=adminDao.getExpenseStats();
		List<ExpenseChartBean> pieChartData=adminDao.getCategoryStats();
		
		model.addAttribute("TodayExpense", TodayExpense);
		model.addAttribute("TotalExpense",TotalExpense);
		model.addAttribute("TotalUser",TotalUser);
		model.addAttribute("totalTransaction",totalTransactionCount);
		model.addAttribute("chartData",chartData);
		model.addAttribute("pieChartData",pieChartData);
		return "AdminDashboard";
	}
	
	@GetMapping("/myprofile")
	public String myProfile() {
		
		return "MyProfile";
	}
	@PostMapping("/saveprofilepic")
	public String saveProfilePic(ProfileBean profileBean) {
		System.out.println(profileBean.getUserId());
		System.out.println(profileBean.getFirstName());
		System.out.println(profileBean.getProfileImg().getOriginalFilename());
		try {
			File userDir = new File("C:\\STS\\ExpenseManager\\src\\main\\resources\\static\\assets\\profile",profileBean.getUserId() + "");
			if (userDir.exists() == false) {
				userDir.mkdir();
			}
			File file = new File(userDir, profileBean.getProfileImg().getOriginalFilename());
			FileUtils.writeByteArrayToFile(file, profileBean.getProfileImg().getBytes());
			profileBean.setImageUrl("assets/profile/" + profileBean.getUserId() + "/"
					+ profileBean.getProfileImg().getOriginalFilename());

			adminDao.updateImageUrl(profileBean);

		} catch (Exception e) {
         e.printStackTrace();
		}
		
		return "redirect:/myprofile";
	}
	
	@GetMapping("/listuser")//User List
	public String listUser(Model model) {

		// pull all category from db-table
		List<UserBean> userList = adminDao.getAllUser();
		model.addAttribute("userList",userList);
		return "ListUser";
	}


}
