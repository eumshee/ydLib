package com.yd.lib.history.web;


import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
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
		model.addAttribute("user",his.historySelect(vo)); //회원 1명 검색
		model.addAttribute("historty",his.userHistorySelect(vo)); //회원에 대한 대출목록
		model.addAttribute("historyList",his.historySelectList()); //대출 후 처리내역 확인
		return "admins/roanreturnManagement";
	}
	
	//대출처리
	@RequestMapping("/insertHistory.do")
	public String insertHistory(HistoryVO vo, UsersVO uvo, HttpServletResponse resp) throws UnsupportedEncodingException {
		resp.setContentType("text/html; charset=utf-8");
		String page = vo.getUser_Name();
		String encodedParam = URLEncoder.encode(page, "UTF-8");
		his.historyInsert(vo);
		return "redirect:adminMemberSearch2.do?user_Name="+encodedParam;
	}
	
	//대출시 중복체크
	@RequestMapping("/checkBook.do")
	public void dopost(HttpServletResponse resp, HistoryVO vo) throws IOException {
		int n = his.bookCheck(vo);
		resp.getWriter().print(n);
	}
	
	//반납시 예약확인 후 반납처리
	@RequestMapping("/returncheck.do")
	public void returncheck(HistoryVO vo, HttpServletResponse resp) throws IOException {
		int n = his.returnCheck(vo);
		int m = 0;
		if(n>0) { //예약정보 있을경우
			his.historyUpdate(vo); // 반납처리
			
			HistoryVO hvo = his.historyOneSelect(vo); //회원 조회 다시조회
			
			if(hvo.getReturn_Delaydays() > 0) { //회원테이블 연체일 부여
				UsersVO uvo = new UsersVO();
				uvo.setReturn_Delaydays(hvo.getReturn_Delaydays());
				uvo.setUser_Id(vo.getUser_Id());
				his.loansusUpdate(uvo);
			}
			m = 1; 
		}else { //예약이 없을경우
			his.historyUpdate(vo); // 반납처리
			
			HistoryVO hvo = his.historyOneSelect(vo); //회원 조회 다시조회
			
			if(hvo.getReturn_Delaydays() > 0) { //회원테이블 연체일 부여
				UsersVO uvo = new UsersVO();
				uvo.setReturn_Delaydays(hvo.getReturn_Delaydays());
				uvo.setUser_Id(vo.getUser_Id());
				his.loansusUpdate(uvo);
			} 
		}
		resp.getWriter().print(m);
		}
	
	//검색유저 history목록
	@RequestMapping("/userHistory.do")
	public String userHistory(HistoryVO vo, Model model) {
		model.addAttribute("userHistory", his.userHistorySelectList(vo));
		return "admins/roanreturnManagement";
	}
}
