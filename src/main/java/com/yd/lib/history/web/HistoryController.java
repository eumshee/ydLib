package com.yd.lib.history.web;



import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

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
	
	//대출 반납페이지
	@RequestMapping("/loanreManagemant.do")
	public String RoanreturnManagemant(Model model) {
		model.addAttribute("historyList",his.historySelectList());
		return "admins/roanreturnManagement";
	}


	@RequestMapping("/adminMemberSearch2.do")
	public String adminMemberSearch2(Model model, HistoryVO vo) {
		model.addAttribute("user",his.historySelect(vo));
		model.addAttribute("historty",his.userHistorySelect(vo));
		return "admins/roanreturnManagement";
	}
	
	@RequestMapping("/insertHistory.do")
	public String insertHistory(HistoryVO vo) throws UnsupportedEncodingException {
		String page = vo.getUser_Name();
		String encodedParam = URLEncoder.encode(page, "UTF-8");
		//his.historyInsert(vo);
		return "redirect:adminMemberSearch2.do?user_Name="+encodedParam;
	}
	
	//반납처리
	@RequestMapping("/returnBook.do")
	public String updateHistory(HistoryVO vo) throws UnsupportedEncodingException {
		String page = vo.getUser_Name();
		String encodedParam = URLEncoder.encode(page, "UTF-8");
		his.historyUpdate(vo);
		return "redirect:adminMemberSearch2.do?user_Name="+encodedParam;
	}
}
