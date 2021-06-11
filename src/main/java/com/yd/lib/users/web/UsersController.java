package com.yd.lib.users.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yd.lib.users.serviceImpl.UsersServiceImpl;
import com.yd.lib.users.vo.UsersVO;


@Controller
public class UsersController {
	
	@Autowired
	private UsersServiceImpl UsersDAO;
	
	
	
	@RequestMapping("/test.do")
	public String test() {
		return "test/test";
	}
	
	//------------------------------- 로그인 ------------------------------ //
	
	@RequestMapping("/userLoginForm.do")
	public String userLoginForm(Model model) {
		return "users/userLoginForm";
	}
	
	
	@RequestMapping("/userLogin.do")
	@ResponseBody
	public String userLogin(UsersVO vo, HttpServletRequest request) {
			
		/*
		 * String id = request.getParameter("user_Id"); String pw =
		 * request.getParameter("user_Pw");
		 */
		
			UsersVO rvo = UsersDAO.userLoginCheck(vo);
			String id = rvo.getUser_Id();
	        
			HttpSession session = request.getSession();
	        if(rvo != null) {
	        session.setAttribute("userId", id);
	        } 
	        return id;
		 
	}
	
	
	//------------------------------- 회원가입 ------------------------------ //
	@RequestMapping("/userJoinForm.do")
	public String userJoinForm(Model model) {
		return "users/userJoinForm";
	}
	
	/*
	@RequestMapping("/emailCheck.do")
	@ResponseBody
	
	public String emailCheck(HttpServletRequest request) {
			
		request.getParameter("email");
		
		int cnt = 0;
		if(service.emailCheck(request.getParameter("email"))) {
			cnt = 1;
		}
		resp.getWriter().print(cnt);
		 /*
	}
	
	/*
	@RequestMapping("/userList.do")
	public String userList(Model model) {
		return "users/userList";
	}
	*/
}
