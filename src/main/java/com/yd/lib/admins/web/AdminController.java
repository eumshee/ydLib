package com.yd.lib.admins.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yd.lib.admins.serviceImpl.BookManageImpl;
import com.yd.lib.admins.serviceImpl.WishManageImpl;
import com.yd.lib.book.vo.BookVO;
import com.yd.lib.wish.vo.WishVO;


@Controller
public class AdminController {
	@Autowired
	WishManageImpl wmi;

	@Autowired
	BookManageImpl bmi;
	
	// 희망도서관리
	@RequestMapping("/wishManagement.do")
	public String wish(Model model) {
		model.addAttribute("wishMgList",wmi.wishManageList());
		return "admins/wish";
	}

	// 희망도서신청변경
	@RequestMapping("/wishProcessUpdate.do")
	public String wishProcessUpdate(Model model, WishVO vo) {
		wmi.wishProcessUpdate(vo);
		return "redirect:wishManagement.do";
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
		return "redirect:bookDetailManage.do?book_Num="+vo.getBook_Num()+"&book_Isbn="+vo.getBook_Isbn();
	}

	@RequestMapping("/bookManageBigoUpdate.do")
	public String bookManageBigoUpdate(Model model, BookVO vo) {
		bmi.bookManageBigoUpdate(vo);
		return "redirect:bookDetailManage.do?book_Num="+vo.getBook_Num()+"&book_Isbn="+vo.getBook_Isbn();
	}
	
	@RequestMapping("/bookOneDelete.do")
	public String bookOneDelete(Model model, BookVO vo) {
		bmi.bookOneDelete(vo);
		return "redirect:bookManagement.do";
	}

	// 도서등록
	@RequestMapping("/bookInputManage.do")
	public String bookInputManage(Model model) {
		return "admins/bookInputManage";
	}
	
	@RequestMapping("/bookOneInsert.do")
	public String bookOneInsert(Model model, BookVO vo) {
		bmi.bookOneInsert(vo);
		return "redirect:bookDetailManage.do?book_Num="+vo.getBook_Num()+"&book_Isbn="+vo.getBook_Isbn();
	}
	
	// 도서상세검색
	@RequestMapping("/bookDetailSearch.do")
	public String bookDetailSearch(Model model) {
		return "admins/bookDetailSearch";
	}
	
	// 예약관리
	@RequestMapping("yeyakmanagemant.do")
	public String yeyakManagemant(Model model) {
		return "admins/yeyakManagemant";
	}
	
}
