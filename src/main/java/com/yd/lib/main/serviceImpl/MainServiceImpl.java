package com.yd.lib.main.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yd.lib.book.vo.BookVO;
import com.yd.lib.users.vo.UsersVO;

@Repository("mainDAO")
public class MainServiceImpl {
	@Autowired
	private SqlSession sqlSession;
	
	public List<BookVO> bookRecommend(UsersVO vo) {
		return sqlSession.selectList("bookRecommend" , vo);
	}

	public List<BookVO> bookBest2() {
		return sqlSession.selectList("bookBest2");
	}

	
}
