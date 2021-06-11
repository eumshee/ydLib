package com.yd.lib.users.web;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class UsersController {
	@RequestMapping("/test.do")
	public String test() {
		return "test/test";
	}
	
	/* 로그인 */
	
	@RequestMapping("/userLoginForm.do")
	public String userLoginForm(Model model) {
		return "users/userLoginForm";
	}
	
	
	@RequestMapping("/userLogin.do")
	public String userLogin(Model model) {
		
		
		//세션에 아이디값 부여
		
		
		/*
		 * // id, pwd 확인 결과를 return // 정상적인 회원이면 이름을 화면으로 보여주도록
		 * 
		 * String id = request.getParameter("memberId"); String pwd =
		 * request.getParameter("memberPwd");
		 * 
		 * MemberVO vo = new MemberVO(); vo.setId(id); vo.setPwd(pwd);
		 * 
		 * MemberServiceImpl service = new MemberServiceImpl(); 
		 * ProductServiceImpl
		 * service1 = new ProductServiceImpl(); ProductServiceImpl service2 = new
		 * ProductServiceImpl(); MemberVO rvo = service.loginCheck(vo);
		 * 
		 * String path = ""; HttpSession session = request.getSession();
		 * 
		 * //새롭게 로그인한 회원의 카트정보 가져오기 (메뉴에 숫자보여주기 위해)
		 * 
		 * 
		 * if(rvo != null) { // 회원이 있는 경우 session.setAttribute("id", rvo.getId());
		 * 
		 * 
		 * // 쿠키 정보 읽어오기 Cookie[] cookies = request.getCookies(); for(Cookie cookie :
		 * cookies) { if(cookie.getName().equals("guestBasketId")) { String guestId =
		 * cookie.getValue(); service1.mergeCartList(rvo.getId(), guestId); // 쿠키 삭체 요청
		 * cookie.setMaxAge(0); // 쿠키 유효 시간을 0으로 만듦 response.addCookie(cookie); //
		 * 클라이언트의 쿠키를 서버가 마음대로 삭제할 수 없으므로 위의 쿠키를 덮어씌워서 보냄 break; } }
		 * 
		 * int cnt = service2.getCountCart(rvo.getId()); request.setAttribute("vo",
		 * rvo); session.setAttribute("cartCnt", cnt); path = "/homePage.do"; } return
		 * path;
		 * 
		 * 
		 * 
		 * 
		 * 
		 * 
		 * 
		 */ 
		 return "";
		 
	}
	
	/*
	// 회원가입 //
	@RequestMapping("/userJoinForm.do")
	public String userJoinForm(Model model) {
		return "users/userJoinForm";
	}
	
	
	@RequestMapping("/userList.do")
	public String userList(Model model) {
		return "users/userList";
	}
	*/
}
