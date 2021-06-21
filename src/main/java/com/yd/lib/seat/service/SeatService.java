package com.yd.lib.seat.service;

import java.util.List;

import com.yd.lib.seat.vo.SeatVO;
import com.yd.lib.seat.vo.SeatroomVO;

public interface SeatService {
	List<SeatVO> seatList();
	SeatroomVO seatSearch(SeatroomVO vo);
	int seatOneInsert(SeatroomVO vo);
	int seatEnd(SeatroomVO vo);
	int allSeatEnd();
}
