package com.yd.lib.reply.serviceImpl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yd.lib.board.vo.BoardVO;
import com.yd.lib.reply.vo.ReplyVO;


@Repository("replyDAO")
public class ReplyServiceImpl {

	@Autowired
	private SqlSession sqlSession;
	
	// 1건 조회
	public ReplyVO replySelect(BoardVO vo) {
		return sqlSession.selectOne("replySelect", vo);
	}
	
	// 새 글 작성
	public int replyInsert(ReplyVO vo) {
		return sqlSession.insert("replyInsert", vo);
	}
	
	// 작성시 본문 답글수 증가
	public int replyCountInsert(ReplyVO vo) {
		return sqlSession.update("replyCountInsert", vo);
	}	

	// 작성시 본문 답글수 삭제
	public int replyCountDelete(ReplyVO vo) {
		return sqlSession.update("replyCountDelete", vo);
	}	
	
	// 글 삭제
	public int replyDelete(ReplyVO vo) {
		return sqlSession.delete("replyDelete", vo);
	}
	
	// 글 수정
	public int replyUpdate(ReplyVO vo) {
		return sqlSession.update("replyUpdate",vo);
	}
}
