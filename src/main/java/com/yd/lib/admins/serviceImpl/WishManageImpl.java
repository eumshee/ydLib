package com.yd.lib.admins.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yd.lib.wish.vo.WishVO;

@Repository("wishManageDAO")
public class WishManageImpl {
	@Autowired
	SqlSession sqlsession;
	
	// 희망도서목록
	public List<WishVO> wishManageList() {
		return sqlsession.selectList("wishManageList");
	}
	
	// 희망도서처리변경
	public int wishProcessUpdate(WishVO vo) {
		return sqlsession.update("wishProcessUpdate",vo);
	}

	// 희망도서처리결과
	public int wishComentUpdate(WishVO vo) {
		return sqlsession.update("wishComentUpdate",vo);
	}
	
	
}
