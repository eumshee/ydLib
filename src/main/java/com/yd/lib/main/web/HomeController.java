package com.yd.lib.main.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yd.lib.main.serviceImpl.MainServiceImpl;
import com.yd.lib.notice.serviceImpl.NoticeServiceImpl;
import com.yd.lib.users.vo.UsersVO;

@Controller
public class HomeController {
	
	@Autowired
	private NoticeServiceImpl dao;

	@Autowired
	private MainServiceImpl mdao;
	
	
	@RequestMapping("/home.do")
	public String noticeNewListSelect(Model model, HttpServletRequest req) {
		HttpSession session = req.getSession();
		if(session.getAttribute("loginUserVO") != null) {
			UsersVO vo = (UsersVO) session.getAttribute("loginUserVO");
			model.addAttribute("bookRecommend", mdao.bookRecommend(vo));
		} else {
		model.addAttribute("bookRecommend", mdao.bookBest2());
		}
		
		model.addAttribute("notice", dao.noticeSelectNewList());
		return "main/home";
	}
	
	@RequestMapping("/menu_idx75.do")
	public String menu_idx75(Model model) {
		return "main/empty/menu_idx75";
	}

	@RequestMapping("/menu_idx77.do")
	public String menu_idx77(Model model) {
		return "main/empty/menu_idx77";
	}
	
}
