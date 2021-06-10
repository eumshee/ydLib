package com.yd.lib.notice.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yd.lib.notice.vo.NoticeVO;

@Repository("noticeDAO")
public class NoticeServiceImpl {

	@Autowired
	private SqlSession sqlSession;
	
	public List<NoticeVO> noticeSelectList() {
		return sqlSession.selectList("noticeListSelect");
	}

//	@Override
//	public MemberVO memberSelect(MemberVO vo) {
//		return null;
//	}
//
//	@Override
//	public int memberInsert(MemberVO vo) {
//		return sqlSession.insert("memberInsert", vo);
//	}
//
//	@Override
//	public int memberDelete(MemberVO vo) {
//		// TODO Auto-generated method stub
//		return 0;
//	}
//
//	@Override
//	public int memberUpdate(MemberVO vo) {
//		// TODO Auto-generated method stub
//		return 0;
//	}

}
