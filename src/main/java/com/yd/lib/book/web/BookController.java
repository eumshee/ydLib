package com.yd.lib.book.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BookController {
	@RequestMapping("/bookSerchForm.do")
	public String bookSerchForm() {
		return "book/bookSerchForm";
	}
	
	@RequestMapping("/bookSerch.do")
	public String bookSerch() {
		
		return ("redirect:bookSerchForm.do");
	}
}
