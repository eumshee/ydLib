package com.yd.lib.users.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UsersController {
	@RequestMapping("/test.do")
	public String test() {
		return "test/test";
	}
	
	/* 로그인 */
	
	@RequestMapping("/userLoginForm.do")
	public String userLoginForm(Model model) {
		return "users/userLoginForm";
	}
	
	/*
	@RequestMapping("/userLogin.do")
	public String userLogin(Model model) {
		return "users/userLogin";
	}
	
	// 회원가입 //
	@RequestMapping("/userJoinForm.do")
	public String userJoinForm(Model model) {
		return "users/userJoinForm";
	}
	
	
	@RequestMapping("/userList.do")
	public String userList(Model model) {
		return "users/userList";
	}
	*/
}
