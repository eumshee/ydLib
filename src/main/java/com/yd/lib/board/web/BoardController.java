package com.yd.lib.board.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yd.lib.board.serviceImpl.BoardServiceImpl;
import com.yd.lib.board.vo.BoardVO;

@Controller
public class BoardController {
	
	@Autowired
	private BoardServiceImpl dao;
	
	@RequestMapping("/boardList.do")
	public String boardList(Model model) {
		model.addAttribute("board", dao.boardSelectList());
		return "board/boardList";
	}

	@RequestMapping("/boardSelect.do")
	public String boardSelect(Model model, BoardVO vo) {
		dao.boardHitUpdate(vo.getBoard_Id());		//조회수 업데이트
		model.addAttribute("vo", dao.boardSelect(vo));
		return "board/boardSelect";
	}

	@RequestMapping("/boardInsertForm.do") 	// 작성 폼 호출
	public String boardInsertForm() {
		return "board/boardInsertForm";
	}
	
	@RequestMapping("/boardInsert.do")		// 작성 후 버튼누르면
	public String boardInsert(BoardVO vo) { 
		dao.boardInsert(vo);
		return "redirect:boardList.do";
	}	
//	
//	@RequestMapping("/noticeDelete.do")
//	public String noticeDelete(Model model, NoticeVO vo) {
//		dao.noticeDelete(vo);
//		return "redirect:noticeList.do";
//	}
//	
//	@RequestMapping("/noticeUpdate.do")
//	public String noticeUpdate(Model model, NoticeVO vo) {
//		dao.noticeUpdate(vo);
//		return "redirect:noticeSelect.do?notice_Id="+vo.getNotice_Id();
//	}
//	
}
