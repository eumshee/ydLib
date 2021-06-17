package com.yd.lib.seat.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yd.lib.seat.serviceImpl.SeatServiceImpl;
import com.yd.lib.seat.vo.SeatVO;
import com.yd.lib.seat.vo.SeatroomVO;
import com.yd.lib.users.vo.UsersVO;

@Controller
public class SeatController {
	@Autowired
	SeatServiceImpl ssi;

	@RequestMapping("/seatroom.do")
	public String seatroom(Model model, HttpServletRequest req) {
		model.addAttribute("seatList", ssi.seatList());
		return "seat/seatroom2";
	}
	@RequestMapping("/seatUpdate.do")
	public String seatUpdate(Model model, SeatVO vo) {
		return "redirect:seatroom.do";
	}
	//전체 좌석출력
	@RequestMapping("/seatInsertForm.do")
	public String seatInsertForm(Model model) {
		model.addAttribute("list", ssi.seatList());
		return "seat/empty/seatInsertForm";
	}
	
	//좌석예약
	@RequestMapping("/seatOneInsert.do")
	public String seatOneInsert(Model model, SeatroomVO vo) {
		ssi.seatOneInsert(vo);
		return "redirect:seatroom.do";
	}

	//좌석예약
	@RequestMapping("/seatEndUpdate.do")
	public String seatOneUpdate(Model model, SeatroomVO vo) {
		ssi.seatEnd(vo);
		return "redirect:seatroom.do";
	}
	
	
}
