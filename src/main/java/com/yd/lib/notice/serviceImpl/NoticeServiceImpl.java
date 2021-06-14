package com.yd.lib.notice.serviceImpl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yd.lib.book.vo.BookVO;
import com.yd.lib.notice.vo.NoticeVO;

@Repository("noticeDAO")
public class NoticeServiceImpl {

	@Autowired
	private SqlSession sqlSession;
	
	// 공지 리스트
	public List<NoticeVO> noticeSelectList() {
		return sqlSession.selectList("noticeListSelect");
	}

	// 공지 1건 조회
	public NoticeVO noticeSelect(NoticeVO vo) {
		return sqlSession.selectOne("noticeSelect", vo);
	}

	// 조회수 업데이트
	public int noticeHitUpdate(int notice_Id) {
		return sqlSession.update("noticeHitUpdate", notice_Id);
	}
	
	// 새 글 작성
	public int noticeInsert(NoticeVO vo) {
		return sqlSession.insert("noticeInsert", vo);
	}
	
	// 글 삭제
	public int noticeDelete(NoticeVO vo) {
		return sqlSession.delete("noticeDelete", vo);
	}

	public int noticeUpdate(NoticeVO vo) {
		return sqlSession.update("noticeUpdate",vo);
	}
}
