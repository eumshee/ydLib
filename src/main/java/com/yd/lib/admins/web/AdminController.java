package com.yd.lib.admins.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class AdminController {

	@RequestMapping("/wishManagement.do")
	public String wish(Model model) {
		return "admins/wish";
	}
	
	@RequestMapping("/bookManagement.do")
	public String bookManagement(Model model) {
		return "admins/bookManagement";
	}

	@RequestMapping("/bookDetailManage.do")
	public String bookDetailManage(Model model) {
		return "admins/bookDetailManage";
	}

	@RequestMapping("/bookInputManage.do")
	public String bookInputManage(Model model) {
		return "admins/bookInputManage";
	}
}
