package com.yd.lib.admins.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yd.lib.history.service.HistoryService;
import com.yd.lib.history.serviceImpl.HistoryServiceImpl;
import com.yd.lib.users.vo.UsersVO;

@Controller
public class AdminController2 {
	//관리자 첫 페이지
	@Autowired
	private HistoryServiceImpl his;
	
	@RequestMapping("/adminPage.do")
	public String admin(Model model) {
		return "admins/adminPage";
	}
	
	//회원관리 페이지
	@RequestMapping("/memberManagemant.do")
	public String MemberManagemant() {
		
		return "admins/memberManagement";
	}
	
	//멤버 한명검색
	@RequestMapping("adminMemberSearch.do")
	public String AdminMemberSelect(UsersVO vo, Model model) {
		model.addAttribute("users", his.adminUsersSelect(vo));
		return "redirect:memberManagemant.do";
	}
	
	
	//멤버수정
	@RequestMapping("/adminMemberUpdate.do")
	public String AdminMemberUpdate() {
		
		return "";
	}
	
	//멤버 삭제
	@RequestMapping("/adminMemberDelete.do")
	public String AdminMemberDelete() {
		
		return "";
	}
	
	//대출 반납페이지
	@RequestMapping("/loanreManagemant.do")
	public String RoanreturnManagemant() {
		
		return "admins/roanreturnManagement";
	}

	
}