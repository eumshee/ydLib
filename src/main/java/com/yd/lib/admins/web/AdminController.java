package com.yd.lib.admins.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class AdminController {

	@RequestMapping("/wish.do")
	public String wish(Model model) {
		model.addAttribute("wishList","");
		return "admins/wish";
	}
}
