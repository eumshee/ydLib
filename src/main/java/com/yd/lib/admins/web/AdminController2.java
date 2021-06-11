package com.yd.lib.admins.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController2 {
	
	@RequestMapping("/adminPage.do")
	public String admin(Model model) {
		return "admins/adminPage";
	}
	
	@RequestMapping("/memberManagemant.do")
	public String MemberManagemant() {
		
		return "admins/memberManagement";
	}
}
