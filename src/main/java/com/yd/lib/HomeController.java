package com.yd.lib;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yd.lib.notice.serviceImpl.NoticeServiceImpl;

/**
 * Handles requests for the application home page.
 */

@Controller
public class HomeController {
	
	@Autowired
	private NoticeServiceImpl dao;
	
	@RequestMapping("/home.do")
	public String noticeNewListSelect(Model model) {
		model.addAttribute("notice", dao.noticeSelectNewList());
		return "main/home";
	}
	
	@RequestMapping("/menu_idx75.do")
	public String menu_idx75(Model model) {
		return "main/empty/menu_idx75";
	}

	@RequestMapping("/menu_idx77.do")
	public String menu_idx77(Model model) {
		return "main/empty/menu_idx77";
	}
	
}
