package com.yd.lib.history.web;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yd.lib.history.serviceImpl.HistoryServiceImpl;
import com.yd.lib.history.vo.HistoryVO;

@Controller
public class HistoryController {

@Autowired
private HistoryServiceImpl his;
	
	@RequestMapping("/adminMemberSearch2.do")
	public String adminMemberSearch2(Model model, HistoryVO vo) {
		model.addAttribute("user",his.historySelect(vo));
		model.addAttribute("historty",his.userHistorySelect(vo));
		return "admins/roanreturnManagement";
	}
	
	@RequestMapping("/insertHistory.do")
	public String insertHistory(HistoryVO vo) {
		String page = vo.getUser_Name();
		System.out.println(page);
		//his.historyInsert(vo);
		return ("redirect:adminMemberSearch2.do?user_Name="+page);
	}
}
