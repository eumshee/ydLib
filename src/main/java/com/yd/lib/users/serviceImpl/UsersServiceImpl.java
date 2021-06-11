package com.yd.lib.users.serviceImpl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yd.lib.users.vo.UsersVO;

@Repository("UsersDAO")
public class UsersServiceImpl {
	
	@Autowired
	private SqlSession sqlSession;
	
	
	
	public int UserInsert(UsersVO vo) {
		
		return sqlSession.insert("userJoin",vo);
	}

	public UsersVO userLoginCheck(UsersVO vo) {
		
		return sqlSession.selectOne("loginCheck",vo);
	}

}
