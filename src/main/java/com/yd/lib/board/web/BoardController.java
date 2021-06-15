package com.yd.lib.board.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yd.lib.board.serviceImpl.BoardServiceImpl;
import com.yd.lib.board.vo.BoardVO;
import com.yd.lib.reply.serviceImpl.ReplyServiceImpl;
import com.yd.lib.reply.vo.ReplyVO;

@Controller
public class BoardController {
	
	@Autowired
	private BoardServiceImpl dao;
	
	@Autowired
	private ReplyServiceImpl rdao;
	
	@RequestMapping("/boardList.do")
	public String boardList(Model model) {
		model.addAttribute("board", dao.boardSelectList());
		return "board/boardList";
	}

	@RequestMapping("/boardSelect.do")
	public String boardSelect(Model model, BoardVO vo) {
		dao.boardHitUpdate(vo.getBoard_Id());		//조회수 업데이트
		model.addAttribute("vo", dao.boardSelect(vo));
		model.addAttribute("reply", rdao.replySelect(vo));
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
	
	@RequestMapping("/boardDelete.do")
	public String boardDelete(Model model, BoardVO vo) {
		dao.boardDelete(vo);
		return "redirect:boardList.do";
	}
	
	@RequestMapping("/boardUpdate.do")
	public String boardUpdate(Model model, BoardVO vo) {
		dao.boardUpdate(vo);
		return "redirect:boardSelect.do?board_Id="+vo.getBoard_Id();
	}
	
}
