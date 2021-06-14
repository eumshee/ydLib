package com.yd.lib.yeyak.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yd.lib.yeyak.serviceImpl.YeyakServiceImpl;
import com.yd.lib.yeyak.vo.YeyakVO;

@Controller
public class YeyakController {
	@Autowired
	YeyakServiceImpl ysi;

	// 예약관리
	@RequestMapping("/yeyakmanagemant.do")
	public String yeyakManagemant(Model model) {
		model.addAttribute("yeyakList", ysi.yeyakManageList());
		return "admins/yeyakManagemant";
	}

	// 예약상태수정
	@RequestMapping("/yeyakProcessUpdate.do")
	public String yeyakProcessingUpdate(Model model, YeyakVO vo) {
			ysi.yeyakProcessUpdate(vo);
		return "redirect:yeyakmanagemant.do";
	}

}
