package com.yd.lib.board.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yd.lib.board.vo.BoardVO;


@Repository("boardDAO")
public class BoardServiceImpl {

	@Autowired
	private SqlSession sqlSession;
	
	// 리스트
	public List<BoardVO> boardSelectList() {
		return sqlSession.selectList("boardListSelect");
	}

	// 1건 조회
	public BoardVO boardSelect(BoardVO vo) {
		return sqlSession.selectOne("boardSelect", vo);
	}

	// 조회수 업데이트
	public int boardHitUpdate(int board_Id) {
		return sqlSession.update("boardHitUpdate", board_Id);
	}
	
	// 새 글 작성
	public int boardInsert(BoardVO vo) {
		return sqlSession.insert("boardInsert", vo);
	}
	
	// 글 삭제
	public int boardDelete(BoardVO vo) {
		return sqlSession.delete("boardDelete", vo);
	}
	
	// 글 수정
	public int boardUpdate(BoardVO vo) {
		return sqlSession.update("boardUpdate",vo);
	}
}
