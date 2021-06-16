package com.yd.lib.info.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InfoController {
	@Autowired
	InfoServiceImpl isi;
	
	@RequestMapping("/map.do") 	
	public String map() {
		return "info/map";
	}
	
	@RequestMapping("/opening.do") 	
	public String opening() {
		return "info/opening";
	}
	
	@RequestMapping("/policy.do") 	
	public String policy() {
		return "info/policy";
	}
	
	@RequestMapping("/material.do") 	
	public String material(Model model) {
		model.addAttribute("mList",isi.infoMaterialList());
		return "info/material";
	}
	
}
