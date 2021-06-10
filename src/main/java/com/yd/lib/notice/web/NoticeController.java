package com.yd.lib.notice.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NoticeController {
	@RequestMapping("/notice.do")
	public String test() {
		return "notice/noticeList";
	}
}
