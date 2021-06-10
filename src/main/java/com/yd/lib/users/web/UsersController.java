package com.yd.lib.users.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UsersController {
	@RequestMapping("/test.do")
	public String test() {
		return "test/test";
	}
}
