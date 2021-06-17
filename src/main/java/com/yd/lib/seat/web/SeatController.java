package com.yd.lib.seat.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yd.lib.seat.serviceImpl.SeatServiceImpl;
import com.yd.lib.seat.vo.SeatroomVO;

@Controller
public class SeatController {
	@Autowired
	SeatServiceImpl ssi;
	
   @RequestMapping("/seatroom.do")
   public String seatroom(Model model, HttpServletRequest req, SeatroomVO vo) {
      model.addAttribute("seatList", ssi.seatList());

      HttpSession session = req.getSession();
      String name = (String) session.getAttribute("loginUserId");
      vo.setUser_Id(name);
      model.addAttribute("user",ssi.seatSearch(vo));
      return "seat/seatroom";
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

	//먼저퇴실
	@RequestMapping("/seatEndUpdate.do")
	public String seatOneUpdate(Model model, SeatroomVO vo) {
		ssi.seatEnd(vo);
		return "redirect:seatroom.do";
	}
	
	
}
