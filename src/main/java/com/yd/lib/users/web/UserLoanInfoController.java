package com.yd.lib.users.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yd.lib.book.vo.BookVO;
import com.yd.lib.common.Paging;
import com.yd.lib.users.serviceImpl.UsersServiceImpl;

@Controller
public class UserLoanInfoController {
	
	@Autowired
	private UsersServiceImpl UsersDAO;
	
	
	@RequestMapping("/userLoan.do")
	public String userloanPage(HttpServletRequest request,Model model) {
		HttpSession session = request.getSession();
		
		if(session.getAttribute("loginUserVO") != null) {
			
			/*
			 * List<BookVO> total = UsersDAO.loanBook(vo);//전체 검색결과
			 * 
			 * model.addAttribute("newBookList", dao.newBookPaging(vo));//검색 결과중 페이지에 요청된
			 * 페이지에 띄울 결과
			 */
			return "users/userLoanInformation";	
			
			
		} else {
			model.addAttribute("msg", "로그인이 필요한 서비스입니다.");

			return "users/loginAlert";
		}
	}

	
	
	
}
