package com.yd.lib.notice.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yd.lib.notice.serviceImpl.NoticeServiceImpl;



@Controller
public class NoticeController {
	
	@Autowired
	private NoticeServiceImpl dao;
	
	@RequestMapping("/noticeList.do")
	public String noticeList(Model model) {
		model.addAttribute("notice", dao.noticeSelectList());

		return "notice/noticeList";
	}

	@RequestMapping("/noticeInsertForm.do")
	public String noticeInserForm() {
		return "notice/noticeInsertForm";
	}
}
