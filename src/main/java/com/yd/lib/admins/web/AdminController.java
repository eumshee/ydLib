package com.yd.lib.admins.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yd.lib.admins.serviceImpl.BookManageImpl;
import com.yd.lib.book.vo.BookVO;


@Controller
public class AdminController {
	@Autowired
	BookManageImpl bmi;
	
	@RequestMapping("/wishManagement.do")
	public String wish(Model model) {
		return "admins/wish";
	}
	
	@RequestMapping("/bookManagement.do")
	public String bookManagement(Model model) {
		model.addAttribute("bookMgList",bmi.bookManageList());
		return "admins/bookManagement";
	}

	@RequestMapping("/bookDetailManage.do")
	public String bookDetailManage(Model model, BookVO vo) {
		model.addAttribute("bookMgOne", bmi.bookManageSelectOne(vo));
		model.addAttribute("bookMgOver",bmi.booKManageSelectList(vo));
		return "admins/bookDetailManage";
	}

	@RequestMapping("/bookInputManage.do")
	public String bookInputManage(Model model) {
		return "admins/bookInputManage";
	}
}
