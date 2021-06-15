package com.yd.lib.book.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yd.lib.book.service.BookService;
import com.yd.lib.book.vo.BookVO;
import com.yd.lib.users.vo.UsersVO;
import com.yd.lib.yeyak.vo.YeyakVO;

@Repository("BookDAO")
public class BookServiceImpl implements BookService{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<BookVO> searchBookList(BookVO vo) {
		
		return sqlSession.selectList("bookSerchList" , vo);
	}

	@Override
	public List<BookVO> bookDetail(BookVO vo) {
		return sqlSession.selectList("bookSerch", vo);
	}

	@Override
	public int userYeyakCheck(UsersVO vo) {
		return sqlSession.selectList("userYeyakCheck", vo).size();
	}

	@Override
	public void userYeyakInsert(YeyakVO vo) {
		sqlSession.insert("yeyakOneInsert", vo);
	}

	@Override
	public List<BookVO> bookSerchListPaging(BookVO vo) {
		return sqlSession.selectList("bookSerchListPaging" , vo);
	}
	
	
	
	
	

}
