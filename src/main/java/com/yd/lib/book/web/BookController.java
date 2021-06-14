package com.yd.lib.book.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yd.lib.book.service.BookService;
import com.yd.lib.book.vo.BookVO;


@Controller
public class BookController {
	
	@Autowired
	private BookService dao;
	
	@RequestMapping("/bookSerchForm.do")
	public String bookSerchForm(Model model ,  HttpServletRequest req) {
		return "book/bookSerchForm";
	}
	
	@RequestMapping("/bookSerch.do")
	public String bookSerch(Model model , BookVO vo , HttpServletRequest req) {
		
		model.addAttribute("bookSerchList", dao.searchBookList(vo));
		model.addAttribute("reqVO", vo);
		return "book/bookSerchForm";
	}
	@RequestMapping("/bookInfo.do")
	public String bookInfo(Model model , BookVO vo , HttpServletRequest req) {
		System.out.println(1);
		System.out.println(vo.getBook_Num());
		model.addAttribute("bookInfo", dao.searchBook(vo));
		return "book/bookInfo";
	}
	
}
