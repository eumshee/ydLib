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
	
	// 도서목록
	public List<BookVO> bookManageList() {
		return sqlsession.selectList("bookManageList");
	}

	// 도서한건
	public BookVO bookManageSelectOne(BookVO vo) {
		return sqlsession.selectOne("bookManageSelectOne",vo);
	}

	// 중복도서
	public List<BookVO> booKManageSelectList(BookVO vo) {
		return sqlsession.selectList("bookManageSelectList",vo);
	}
	
	// 비고수정
	public int bookManageBigoUpdate(BookVO vo) {
		return sqlsession.update("bookManageBigoUpdate",vo);
	}
	
	// 책수정
	public int bookOneUpdate(BookVO vo) {
		return sqlsession.update("bookOneUpdate",vo);
	}
	
	// 책삭제
	public int bookOneDelete(BookVO vo) {
		return sqlsession.delete("bookOneDelete",vo);
	}
	
	// 책등록
	public int bookOneInsert(BookVO vo) {
		return sqlsession.insert("bookOneInsert",vo);
	}

	
}
