package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;


import com.grownited.bean.VendorBean;
import com.grownited.dao.VendorDao;

@Controller
public class VendorController {
	
	@Autowired
	VendorDao vendorDao;

	
	@GetMapping("/vendor")
	public String vendor() {
		return "Vendor";
	}
	
	@PostMapping("/savevendor")
	public String saveVendor(VendorBean vendorBean) {
		System.out.println(vendorBean.getVendorName());
		vendorDao.insertVendor(vendorBean);
		return "redirect:/listvendor";
	}
	@GetMapping("/listvendor")
	public String listVendor(Model model) {

		// pull all category from db-table
		List<VendorBean> vendorlist = vendorDao.getAllVendor();
		model.addAttribute("vendorlist",vendorlist);
		return "ListVendor";
	}
	
	@GetMapping("/deletevendor/{vendorId}")
	public String deleteVendor(@PathVariable("vendorId") Integer VendorId) {
		
		vendorDao.deleteVendor(VendorId);
		return "redirect:/listvendor";
	}


}
 