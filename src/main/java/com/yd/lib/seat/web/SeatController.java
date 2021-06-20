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
      if(session.getAttribute("loginUserId") != null) {
	      String name = (String) session.getAttribute("loginUserId");
	      vo.setUser_Id(name);
	      model.addAttribute("user",ssi.seatSearch(vo));
      } else {
			model.addAttribute("msg", "로그인이 필요한 서비스입니다.");
			return "users/loginAlert";
      }
      return "seat/seatroom";
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

	//확인사항
	@RequestMapping("/seatInfoChk.do")
	public String seatInfoChk(Model model, SeatroomVO vo) {
		return "seat/empty/seatInfo";
	}
	
}
