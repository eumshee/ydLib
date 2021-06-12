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

	public NoticeVO noticeSelect(NoticeVO vo) {
		return sqlSession.selectOne("noticeSelect", vo);
	}

	public int noticeInsert(NoticeVO vo) {
		return sqlSession.insert("noticeInsert", vo);
	}

	public int noticeHitUpdate(int notice_Id) {
		return sqlSession.update("noticeHitUpdate", notice_Id);
	}
	
	
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
