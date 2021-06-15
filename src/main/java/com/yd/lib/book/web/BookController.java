package com.yd.lib.book.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yd.lib.book.service.BookService;
import com.yd.lib.book.vo.BookVO;
import com.yd.lib.users.vo.UsersVO;
import com.yd.lib.yeyak.vo.YeyakVO;


@Controller
public class BookController {
	
	@Autowired
	private BookService dao;
	
	//검색 페이지로 가기
	@RequestMapping("/bookSerchForm.do")
	public String bookSerchForm(Model model) {
		return "book/bookSerchForm";
	}
	
	//검색결과 출력
	@RequestMapping("/bookSerch.do")
	public String bookSerch(Model model , BookVO vo) {
		
		model.addAttribute("bookSerchList", dao.searchBookList(vo));
		model.addAttribute("reqVO", vo);
		return "book/bookSerchForm";
	}
	
	//책한권 정보 보기
	@RequestMapping("/bookInfo.do")
	public String bookInfo(Model model , BookVO vo) {
		model.addAttribute("bookDetail", dao.bookDetail(vo));
		return "book/bookInfo";
	}
	
	//유저의 예약 책 수 확인
	@RequestMapping("/userYeyakCheck.do")
	@ResponseBody
	public int userYeyakCheck(Model model , HttpServletRequest req , HttpServletResponse resp) {
		UsersVO vo = new UsersVO();
		vo.setUser_Id(req.getParameter("user_Id"));
		return dao.userYeyakCheck(vo);
	}
	
	@RequestMapping("/userYeyakInsert.do")
	@ResponseBody
	public int yeyakInsert(Model model , HttpServletRequest req) {
		YeyakVO vo = new YeyakVO();
		vo.setBook_Num(Integer.parseInt(req.getParameter("book_Num")));
		vo.setUser_Id(req.getParameter("user_Id"));
		dao.userYeyakInsert(vo);
		return 0;
	}
	
}
