package com.yd.lib.seat.service;

import java.util.List;

import com.yd.lib.seat.vo.SeatVO;
import com.yd.lib.seat.vo.SeatroomVO;
import com.yd.lib.users.vo.UsersVO;

public interface SeatService {
	List<SeatVO> seatList();
	SeatroomVO userSeatSelect(UsersVO vo);
	int seatOneInsert(SeatroomVO vo);
	int seatEnd(SeatroomVO vo);
}
