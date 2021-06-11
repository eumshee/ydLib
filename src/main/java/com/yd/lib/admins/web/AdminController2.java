<<<<<<< HEAD
package com.yd.lib.admins.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController2 {
	//관리자 첫 페이지
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
	public String AdminMemberSelect() {
		
		return "";
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
	
	@RequestMapping("/adminMemberSearch2.do")
	public String adminMemberSearch2() {
		return "";
	}
	
}
=======
package com.yd.lib.admins.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController2 {
	
	@RequestMapping("/adminPage.do")
	public String admin(Model model) {
		return "admins/adminPage";
	}
	
	@RequestMapping("/memberManagemant.do")
	public String MemberManagemant() {
		
		return "admins/memberManagement";
	}
}
>>>>>>> branch 'main' of https://github.com/eumshee/ydLib.git
