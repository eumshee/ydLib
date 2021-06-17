package com.yd.lib.book.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yd.lib.book.service.BookService;
import com.yd.lib.book.vo.BookVO;
import com.yd.lib.users.vo.UsersVO;
import com.yd.lib.wish.vo.WishVO;
import com.yd.lib.yeyak.vo.YeyakVO;

@Repository("BookDAO")
public class BookServiceImpl implements BookService{

	@Autowired
	private SqlSession sqlSession;
	
	public List<BookVO> searchBookList(BookVO vo) {
		
		return sqlSession.selectList("bookSerchList" , vo);
	}
	public List<BookVO> bookDetail(BookVO vo) {
		return sqlSession.selectList("bookSerch", vo);
	}

	public int userYeyakCheck(UsersVO vo) {
		return sqlSession.selectList("userYeyakCheck", vo).size();
	}

	public void userYeyakInsert(YeyakVO vo) {
		sqlSession.insert("yeyakOneInsert", vo);
	}

	public List<BookVO> bookSerchListPaging(BookVO vo) {
		return sqlSession.selectList("bookSerchListPaging" , vo);
	}

	public List<BookVO> newBook(BookVO vo) {
		return sqlSession.selectList("newBook" , vo);
	}

	public List<BookVO> newBookPaging(BookVO vo) {
		return sqlSession.selectList("newBookPaging" , vo);
	}

	public List<BookVO> bestBookTop10() {
		return sqlSession.selectList("bookBestTop10");
	}

	public List<BookVO> subJectBestBookTop10(BookVO vo) {
		return sqlSession.selectList("subjectBookBestTop10" , vo);
	}

	public void wishBookInsert(WishVO vo) {
		sqlSession.insert("wishBookInsert", vo);
	}

	public int wishCnt(WishVO vo) {
		return sqlSession.selectOne("wishCnt", vo);
	}
	
	
	
	
	

}
