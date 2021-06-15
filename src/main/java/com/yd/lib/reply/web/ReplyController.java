package com.yd.lib.reply.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yd.lib.board.vo.BoardVO;
import com.yd.lib.reply.serviceImpl.ReplyServiceImpl;
import com.yd.lib.reply.vo.ReplyVO;

@Controller
public class ReplyController {
	
	@Autowired
	private ReplyServiceImpl dao;
	
	@RequestMapping("/replyInsertForm.do") 	// 작성 폼 호출
	public String replyInsertForm(Model model, BoardVO vo) {
		model.addAttribute("vo", vo);
		return "reply/replyInsertForm";
	}
	
	@RequestMapping("/replyInsert.do")		// 작성 후 버튼누르면
	public String replyInsert(ReplyVO vo) { 
		dao.replyInsert(vo);
		dao.replyCountInsert(vo);
		return "redirect:boardSelect.do?board_Id="+vo.getRe_Bnum();
	}	
	
	@RequestMapping("/replyDelete.do")
	public String replyDelete(Model model, ReplyVO vo) {
		dao.replyDelete(vo);
		dao.replyCountDelete(vo);
		return "redirect:boardSelect.do?board_Id="+vo.getRe_Bnum();
	}
	
	@RequestMapping("/replyUpdate.do")
	public String replyUpdate(Model model, ReplyVO vo) {
		dao.replyUpdate(vo);
		return "redirect:boardSelect.do?board_Id="+vo.getRe_Bnum();
	}	
}
