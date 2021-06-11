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
		req.setAttribute("bookSerchList", dao.searchBookList(vo));
		return "book/bookSerchForm";
	}
}
