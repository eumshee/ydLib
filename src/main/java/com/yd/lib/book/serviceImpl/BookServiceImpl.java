package com.yd.lib.book.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yd.lib.book.service.BookService;
import com.yd.lib.book.vo.BookVO;

@Repository("BookDAO")
public class BookServiceImpl implements BookService{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<BookVO> searchBookList(BookVO vo) {
		
		return sqlSession.selectList("bookSerchList" , vo);
	}

	@Override
	public BookVO searchBook(BookVO vo) {
		return sqlSession.selectOne("bookSerch", vo);
	}
	

}
