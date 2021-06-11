package com.yd.lib.book.web;

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
	public String bookSerchForm(Model model) {
		return "book/bookSerchForm";
	}
	
	@RequestMapping("/bookSerch.do")
	public String bookSerch(Model model , BookVO vo) {
		System.out.println(vo.getBook_Title() + "1");
		model.addAttribute("bookSerchList", dao.searchBookList(vo));
		System.out.println(dao.searchBookList(vo).size());
		return ("redirect:bookSerchForm.do");
	}
}
