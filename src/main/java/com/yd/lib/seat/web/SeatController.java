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
	
	@RequestMapping("/seatOneInsert.do")
	public String seatOneInsert(Model model, SeatroomVO vo) {
		ssi.seatOneInsert(vo);
		return "seat/empty/seatOneInsert";
	}
	
	
}
