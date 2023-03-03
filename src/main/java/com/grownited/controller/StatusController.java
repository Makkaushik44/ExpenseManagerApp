package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.bean.CategoryBean;
import com.grownited.bean.StatusBean;
import com.grownited.dao.StatusDao;

@Controller
public class StatusController {
	
	@Autowired
	StatusDao statusDao;

	@GetMapping("/status")
	public String status() {
		return "Status";
	}
	
	@PostMapping("/savestatus")
	public String saveStatus(StatusBean statusBean) {
		
		statusDao.insertStatus(statusBean);
		return "Status";
		
	}
	
	@GetMapping("/liststatus")
	public String listStatus(Model model) {

		// pull all category from db-table
		List<StatusBean> list = statusDao.getAllStatus();
		model.addAttribute("list",list);
		return "ListStatus";
	}
}
