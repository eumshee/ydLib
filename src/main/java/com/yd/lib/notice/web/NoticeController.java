package com.yd.lib.notice.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yd.lib.notice.serviceImpl.NoticeServiceImpl;
import com.yd.lib.notice.vo.NoticeVO;



@Controller
public class NoticeController {
	
	@Autowired
	private NoticeServiceImpl dao;
	
	@RequestMapping("/noticeList.do")
	public String noticeList(Model model) {
		model.addAttribute("notice", dao.noticeSelectList());

		return "notice/noticeList";
	}

	@RequestMapping("/noticeSelect.do")
	public String noticeSelect(Model model, NoticeVO vo) {
		model.addAttribute("vo", dao.noticeSelect(vo));
		
		return "notice/noticeSelect";
	}

	@RequestMapping("/noticeInsertForm.do") 	// 작성 폼으로 호출
	public String noticeInsertForm() {
		return "notice/noticeInsertForm";
	}
	
	@RequestMapping("/noticeInsert.do")		// 작성 후 버튼누르면
	public String noticeInsert(NoticeVO vo) {
		int n = dao.noticeInsert(vo);
		return "redirect:noticeList.do";
	}	
	
	
	
	
}
