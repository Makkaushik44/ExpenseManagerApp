package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.bean.AccountTypeBean;
import com.grownited.dao.AccountTypeDao;


@Controller
public class AccountTypeController {
	
	@Autowired
	AccountTypeDao accountTypeDao;
	
    @GetMapping("/accounttype")
    public String accountType() {
    	return "AccountType";
    }
    
    @PostMapping("/saveaccounttype")
    public String saveAccountType(AccountTypeBean accountTypeBean) {
    	
    	System.out.println(accountTypeBean.getAccountTypeName());
		accountTypeDao.insertAccountType(accountTypeBean);
    	return "redirect:/listaccounttype";
    }
    
    @GetMapping("/listaccounttype")
	public String listAccountType(Model model) {

		// pull all category from db-table
		List<AccountTypeBean> aclist = accountTypeDao.getAllAccountType();
		model.addAttribute("aclist",aclist);
		return "ListAccountType";
	}

}
