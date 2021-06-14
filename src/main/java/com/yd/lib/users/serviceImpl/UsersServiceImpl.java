package com.yd.lib.users.serviceImpl;

import java.util.HashMap;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yd.lib.users.vo.UsersVO;

@Repository("UsersDAO")
public class UsersServiceImpl {
	
	@Autowired
	private SqlSession sqlSession;
	
	
	public void userInsert(HashMap<String, Object> param) {
		
		sqlSession.insert("userJoin", param);
	}

	public UsersVO userLoginCheck(UsersVO vo) {
		
		return sqlSession.selectOne("loginCheck",vo);
	}
	
	public UsersVO emailCheck(@Param("p") String email) {
		
		return sqlSession.selectOne("emailCheck",email);
	}

	public UsersVO phoneCheck(@Param("p") String tel) {
		
		return sqlSession.selectOne("telCheck",tel);
	}

	public UsersVO idCheck(@Param("p") String id) {
		
		return sqlSession.selectOne("idCheck",id);
}


}
