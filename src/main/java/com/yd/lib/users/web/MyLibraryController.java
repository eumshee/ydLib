package com.yd.lib.users.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import com.yd.lib.users.serviceImpl.UsersServiceImpl;
import com.yd.lib.users.vo.UserLoanInfoVO;
import com.yd.lib.users.vo.UserWishInfoVO;
import com.yd.lib.users.vo.UserYeyakInfoVO;

@Controller
public class MyLibraryController {
	
	@Autowired
	private UsersServiceImpl UsersDAO;
	
	//대출내역조회
	@RequestMapping("/userLoan.do")
	public String userloanPage(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("loginUserId");
		
		
		if(session.getAttribute("loginUserVO") != null) {
			
			
			 List<UserLoanInfoVO> total = UsersDAO.userLoanList(userId);//전체 검색결과
			 int overDueBooksCount =UsersDAO.overDueBooksCount(userId);
			 
			 model.addAttribute("userLoanList",total);
			 model.addAttribute("overDueBooksCount",overDueBooksCount);
			 
			return "users/userLoanInfo";	
		} else {
			model.addAttribute("msg", "로그인이 필요한 서비스입니다.");

			return "users/loginAlert";
		}
	}

	//예약현황
	@RequestMapping("/userYeyak.do")
	public String userYeyakPage(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("loginUserId");
		
		
		if(session.getAttribute("loginUserVO") != null) {
			
			 List<UserYeyakInfoVO> total = UsersDAO.userYeyakList(userId);//전체 검색결과
			 
			 model.addAttribute("userYeyakList",total);
			return "users/userYeyakInfo";	
		} else {
			model.addAttribute("msg", "로그인이 필요한 서비스입니다.");

			return "users/loginAlert";
		}
	}
	//예약취소
		@RequestMapping("/yeyakCancel.do")
		public String yeyakCancel(HttpServletRequest request, Model model) {
			
			String yeyak_Num = request.getParameter("yeyak_Num");

			UsersDAO.yeyakCancel(yeyak_Num);// 전체 검색결과

			return "redirect:userYeyak.do";
			
		}
		
	// 희망도서 신청현황
	@RequestMapping("/userWish.do")
	public String userWishPage(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("loginUserId");

		if (session.getAttribute("loginUserVO") != null) {

			List<UserWishInfoVO> total = UsersDAO.userWishList(userId);// 전체 검색결과

			model.addAttribute("userWishList", total);
			return "users/userWishInfo";
		} else {
			model.addAttribute("msg", "로그인이 필요한 서비스입니다.");

			return "users/loginAlert";
		}
	}

}
