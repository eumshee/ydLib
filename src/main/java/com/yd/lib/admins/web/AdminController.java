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
	
	// 희망도서관리
	@RequestMapping("/wishManagement.do")
	public String wish(Model model) {
		return "admins/wish";
	}
	
	// 장서관리
	@RequestMapping("/bookManagement.do")
	public String bookManagement(Model model) {
		model.addAttribute("bookMgList",bmi.bookManageList());
		return "admins/bookManagement";
	}

	// 도서상세관리
	@RequestMapping("/bookDetailManage.do")
	public String bookDetailManage(Model model, BookVO vo) {
		model.addAttribute("bookMgOne", bmi.bookManageSelectOne(vo));
		model.addAttribute("bookMgOver",bmi.booKManageSelectList(vo));
		return "admins/bookDetailManage";
	}

	@RequestMapping("/bookOneUpdate.do")
	public String bookOneUpdate(Model model, BookVO vo) {
		bmi.bookOneUpdate(vo);
		return "redirect:bookDetailManage.do?book_Num="+vo.getBook_Num();
	}

	@RequestMapping("/bookManageBigoUpdate.do")
	public String bookManageBigoUpdate(Model model, BookVO vo) {
		bmi.bookManageBigoUpdate(vo);
		return "redirect:bookManagement.do";
	}
	
	// 도서등록
	@RequestMapping("/bookInputManage.do")
	public String bookInputManage(Model model) {
		return "admins/bookInputManage";
	}
}
