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
		
		
		if(userId != null) {
			
			
			 List<UserLoanInfoVO> total = UsersDAO.userLoanList(userId);//전체 검색결과
			 
			 model.addAttribute("userLoanList",total);
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
		
		
		if(userId != null) {
			
			 List<UserYeyakInfoVO> total = UsersDAO.userYeyakList(userId);//전체 검색결과
			 
			 model.addAttribute("userYeyakList",total);
			return "users/userYeyakInfo2";	
		} else {
			model.addAttribute("msg", "로그인이 필요한 서비스입니다.");

			return "users/loginAlert";
		}
	}

	// 희망도서 신청현황
	@RequestMapping("/userWish.do")
	public String userWishPage(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("loginUserId");

		if (userId != null) {

			List<UserWishInfoVO> total = UsersDAO.userWishList(userId);// 전체 검색결과

			model.addAttribute("userWishList", total);
			return "users/userWishInfo";
		} else {
			model.addAttribute("msg", "로그인이 필요한 서비스입니다.");

			return "users/loginAlert";
		}
	}

}
