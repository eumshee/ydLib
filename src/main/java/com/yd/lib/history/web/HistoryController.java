package com.yd.lib.history.web;


import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.yd.lib.history.serviceImpl.HistoryServiceImpl;
import com.yd.lib.history.vo.HistoryVO;
import com.yd.lib.users.vo.UsersVO;

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
		model.addAttribute("historyList",his.historySelectList());
		return "admins/roanreturnManagement";
	}
	
	@RequestMapping("/insertHistory.do")
	public String insertHistory(HistoryVO vo, UsersVO uvo, HttpServletResponse resp) throws UnsupportedEncodingException {
		resp.setContentType("text/html; charset=utf-8");
		String page = vo.getUser_Name();
		String encodedParam = URLEncoder.encode(page, "UTF-8");
		UsersVO rvo = his.adminUsersSelect(uvo);
		String path = "";
		if(rvo.getUser_Gubun().equals("삭제 회원")) {
			path = "redirect:home.do";
		}else {
			his.historyInsert(vo);
			path = "redirect:adminMemberSearch2.do?user_Name="+encodedParam;
		}
		return path;
	}
	
	//반납처리
	@RequestMapping("/returnBook.do")
	public String updateHistory(HistoryVO vo) throws UnsupportedEncodingException {
		String page = vo.getUser_Name();
		System.out.println(page);
		String encodedParam = URLEncoder.encode(page, "UTF-8");
		his.historyUpdate(vo);
		
		HistoryVO hvo = his.historyOneSelect(vo);
		
		System.out.println(hvo.getReturn_Delaydays());
		System.out.println(vo.getUser_Id());
		if(hvo.getReturn_Delaydays() > 0) {
			UsersVO uvo = new UsersVO();
			uvo.setReturn_Delaydays(hvo.getReturn_Delaydays());
			uvo.setUser_Id(vo.getUser_Id());
			his.loansusUpdate(uvo);
		}
		return "redirect:adminMemberSearch2.do?user_Name="+encodedParam;
	}
	
	//검색유저 history목록
	@RequestMapping("/userHistory.do")
	public String userHistory(HistoryVO vo, Model model) {
		model.addAttribute("userHistory", his.userHistorySelectList(vo));
		return "admins/roanreturnManagement";
	}
}
