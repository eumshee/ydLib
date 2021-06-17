package com.yd.lib.seat.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yd.lib.seat.service.SeatService;
import com.yd.lib.seat.vo.SeatVO;
import com.yd.lib.seat.vo.SeatroomVO;
import com.yd.lib.users.vo.UsersVO;

@Repository
public class SeatServiceImpl implements SeatService {
	@Autowired
	SqlSession sqlsession;
	
	// 좌석정보
	@Override
	public List<SeatVO> seatList() {
		return sqlsession.selectList("seatList");
	}

	// 열람실 예약등록
	@Override
	public int seatOneInsert(SeatroomVO vo) {
		return sqlsession.insert("seatOneInsert",vo);
	}

	// 개인좌석
	@Override
	public SeatroomVO userSeatSelect(UsersVO vo) {
		return sqlsession.selectOne("userSeatSelect", vo);
	}

	// 자리반납시간
	@Override
	public int seatEnd(SeatroomVO vo) {
		return sqlsession.update("seatEnd",vo);
	}


}
