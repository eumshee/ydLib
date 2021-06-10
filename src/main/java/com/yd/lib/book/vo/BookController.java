package com.yd.lib.book.vo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BookController {
	@RequestMapping("/test.do")
	public String test() {
		return "test/test";
	}
}
