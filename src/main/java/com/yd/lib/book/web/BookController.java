package com.yd.lib.book.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yd.lib.book.service.BookService;
import com.yd.lib.book.vo.BookVO;
import com.yd.lib.common.Paging;
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
	public String bookSerch(Model model , BookVO vo , HttpServletRequest req) {
		
		model.addAttribute("bookSerchList", dao.searchBookList(vo));
		model.addAttribute("reqVO", vo);
		//실험중
		String page = req.getParameter("page");
		//요청받은 페이지번호
		if(page == null) {
			page = "1";
		}
		int pageCnt = Integer.parseInt(page);
		int firstCnt = (pageCnt - 1) * 10 + 1; // 1 , 11 ,21
		int lastCnt = (pageCnt * 10); // 10 , 20 , 30
		
		vo.setFirstCnt(firstCnt);
		vo.setLastCnt(lastCnt);
		
		List<BookVO> total = dao.searchBookList(vo);//전체 검색결과
		Paging paging = new Paging();
		paging.setPageNo(pageCnt);//요청받은 페이지
		paging.setPageSize(10);//한페이지에 보여줄 값
		paging.setTotalCount(total.size());//페이지에 필요한 변수 생성
	    
		model.addAttribute("paging", paging);//페이징에 필요한 값
		model.addAttribute("bookSerchList", dao.bookSerchListPaging(vo));//검색 결과중 페이지에 요청된 페이지에 띄울 결과들
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
