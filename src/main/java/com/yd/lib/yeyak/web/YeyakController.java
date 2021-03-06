package com.yd.lib.yeyak.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	// 예약등록폼
	@RequestMapping("/yeyakInputManage.do")
	public String yeyakInput(Model model) {
		return "admins/yeyakInputManage";
	}

	// 예약등록
	@RequestMapping("/yeyakOneInsert.do")
	public String yeyakOneInsert(Model model, YeyakVO vo) {
		ysi.yeyakOneInsert(vo);
		return "redirect:yeyakmanagemant.do";
	}
	
	// 유저검색
	@RequestMapping("/yeyakUserSearch.do")
	public String yeyakUserSearch(Model model) {
		model.addAttribute("userList",ysi.yeyakUserSearch());
		return "yeyak/empty/yeyakUserSearch";
	}
	
	// 예약상태확인
	@RequestMapping("/yeyakManageCheck.do")
	public String yeyakCheck(Model model, YeyakVO vo) {
		model.addAttribute("yeyakUser",ysi.yeyakCheck(vo));
		return "yeyak/empty/yeyakManageCheck";
	}
	
	@RequestMapping("/yeyakCntChk.do")
	@ResponseBody
	public int yeyakCntChk(Model model, YeyakVO vo) {
		return ysi.yeyakCntChk(vo);
	}

}

