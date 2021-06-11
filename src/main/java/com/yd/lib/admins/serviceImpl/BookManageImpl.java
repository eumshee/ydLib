package com.yd.lib.admins.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yd.lib.book.vo.BookVO;

@Repository("bookManageDAO")
public class BookManageImpl {
	@Autowired
	SqlSession sqlsession;
	
	public List<BookVO> bookManageList() {
		return sqlsession.selectList("bookManageList");
	}

	public BookVO bookManageSelectOne(BookVO vo) {
		return sqlsession.selectOne("bookManageSelectOne",vo);
	}

	public List<BookVO> booKManageSelectList(BookVO vo) {
		return sqlsession.selectList("bookManageSelectList",vo);
	}
	
	public int bookOneUpdate(BookVO vo) {
		return sqlsession.update("bookOneUpdate",vo);
	}

	
}
