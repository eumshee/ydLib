package com.yd.lib.users.serviceImpl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import com.yd.lib.users.vo.UsersVO;

@Repository("UsersDAO")
public class UsersServiceImpl {
	
	private SqlSession sqlSession;
	
	public int UserInsert(UsersVO vo) {
		
		return sqlSession.insert("userJoin",vo);
	}

}
