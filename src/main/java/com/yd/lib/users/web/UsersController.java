package com.yd.lib.users.web;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;

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
	
	
	@RequestMapping("/userLoginIdCheck.do")
	@ResponseBody
	public String userLoginIdCheck(UsersVO vo, HttpServletRequest request, Model model) {
			
		
			UsersVO rvo = UsersDAO.userLoginCheck(vo);
			String id = rvo.getUser_Id();
			String userBirth = rvo.getUser_Birth();
			String userBirthYear = userBirth.substring(0, 4);
			String userBirthMonth = userBirth.substring(5,7);
			String userBirthDay = userBirth.substring(8,10);
			
			HttpSession session = request.getSession();
	        if(rvo != null) {
	        session.setAttribute("loginUserVO", rvo);
	        session.setAttribute("loginUserId", id);
	        
	        //my page 표시용
	        session.setAttribute("loginUserVOBirth", userBirthYear+"년 " + userBirthMonth+"월 " + userBirthDay +"일 ");
	        } 
	        
	        return id;
		 
	}
	

	@RequestMapping("/userLogOut.do")
	public String userLogOut(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:home.do";
	}
	
	//------------------------------- 회원가입 ------------------------------ //
	@RequestMapping("/userJoinForm.do")
	public String userJoinForm(Model model) {
		return "users/userJoinForm";
	}
	
	
	@RequestMapping("/sameEmailCheck.do")
	@ResponseBody
	public int emailCheck(HttpServletRequest request) {
			
		String email = request.getParameter("email");
		
		int cnt = 0;
		if(UsersDAO.emailCheck(email) != null) {
			cnt = 1;
		}
		
		return cnt;
	}
	
	@RequestMapping("/userIdCheck.do")
	@ResponseBody
	public int userIdCheck(HttpServletRequest request) {
			
		String id = request.getParameter("id");
		
		int cnt = 0;
		if(UsersDAO.idCheck(id) != null) {
			cnt = 1;
		}
		
		return cnt;
	}
	
	@RequestMapping("/userJoin.do")
	public String userJoin(UsersVO vo, HttpServletRequest request) throws ParseException {
		
		//테이블양식에 맞게 birth 수정 
		String birthYear = request.getParameter("user_BirthYear");
		String birthMonth = request.getParameter("user_BirthMonth");
		String birthDay = request.getParameter("user_BirthDay");
		
		String user_Birth = birthDay + "/" + birthMonth + "/" +birthYear;
	    Date user_Birth1 =new SimpleDateFormat("dd/MM/yyyy").parse(user_Birth);  
		
	    //테이블양식에 맞게 address 수정 
		String user_post = request.getParameter("userAddressZip");
		String user_addr = request.getParameter("userAddress");
		String user_detailedAddr = request.getParameter("userAddressDetail");
		
		String user_Addr = user_addr + " " + user_detailedAddr + " " + user_post ;
		
		
		HashMap<String, Object> param = new HashMap<>(); 
		param.put("user_Id", vo.getUser_Id()); 
		param.put("user_Name", vo.getUser_Name()); 
		param.put("user_Pw", vo.getUser_Pw()); 
		param.put("user_Gender", vo.getUser_Gender()); 
		param.put("user_Email", vo.getUser_Email());
		param.put("user_Phone", vo.getUser_Phone());
		param.put("user_Addr", user_Addr); 
		param.put("user_Birth", user_Birth1);
		
		UsersDAO.userInsert(param);
		
		return "redirect:userLoginForm.do";
	}
	
	
	
	// ------------------------------- 유저 정보수정 ------------------------------ //
	
	@RequestMapping("/userPage.do")
	public String userPage(HttpServletRequest request, Model model) throws Exception {
		HttpSession session = request.getSession();
		
		if(session.getAttribute("loginUserVO") != null) {
			return "users/userPage";	
		} else {
			model.addAttribute("msg", "로그인이 필요한 서비스입니다.");

			return "users/loginAlert";
		}
	}
	
	@RequestMapping("/userUpdate.do")
	public String userUpdate(UsersVO vo, HttpServletRequest request) {
		
		String id = request.getParameter("user_Id");
		
		
		// 테이블양식에 맞게 address 수정
		String user_post = request.getParameter("userAddressZip");
		String user_addr = request.getParameter("userAddress");
		String user_detailedAddr = request.getParameter("userAddressDetail");

		String user_Addr = user_addr + " " + user_detailedAddr + " " + user_post;

		HashMap<String, Object> param = new HashMap<>(); 
		param.put("user_Id", id);
		
		
		if(!vo.getUser_Pw().equals("")) {
			param.put("user_Pw", vo.getUser_Pw());
			UsersDAO.userPwUpdate(param);
		} 
		if (!vo.getUser_Email().equals("")) {
			param.put("user_Email", vo.getUser_Email());
			UsersDAO.userEmailUpdate(param);
		} 
		
		if(!vo.getUser_Phone().equals("")) { 
			param.put("user_Phone", vo.getUser_Phone());
		  	UsersDAO.userPhoneUpdate(param); 
		} 
		
		if (!user_post.equals("")) {
			param.put("user_Addr", user_Addr); 
			UsersDAO.userAddrUpdate(param); 
		} 
		 
		
		return "redirect:home.do";
		

	}
}
