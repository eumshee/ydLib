package com.yd.lib.seat.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yd.lib.seat.serviceImpl.SeatServiceImpl;
import com.yd.lib.seat.vo.SeatVO;
import com.yd.lib.seat.vo.SeatroomVO;

@Controller
public class SeatController {
	@Autowired
	SeatServiceImpl ssi;
	
	@RequestMapping("/seatroom.do")
	public String seatroom(Model model) {
		model.addAttribute("seatList",ssi.seatList());
		return "seat/seatroom";
	}

	@RequestMapping("/seatUpdate.do")
	public String seatUpdate(Model model, SeatVO vo) {
		ssi.seatUpdate(vo);
		return "redirect:seatroom.do";
	}
	
	//전체 좌석출력
	@RequestMapping("/seatInsertForm.do")
	public String seatInsertForm(Model model) {
		model.addAttribute("list",ssi.seatList());
		return "seat/empty/seatInsertForm";
	}
	
	
}
