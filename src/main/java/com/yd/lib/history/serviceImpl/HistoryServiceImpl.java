package com.yd.lib.history.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yd.lib.history.service.HistoryService;
import com.yd.lib.history.vo.HistoryVO;
import com.yd.lib.users.vo.UsersVO;

@Repository
public class HistoryServiceImpl implements HistoryService{
@Autowired
	private SqlSession sqlSession; 
	
	//user 전체 검색(회원관리)
	public List<UsersVO> adminSelectList(){
		
		return sqlSession.selectList("adminSelectList");
	}
	//user 이름 으로 검색(회원관리)
	public UsersVO adminUsersSelect(UsersVO vo) {
		return sqlSession.selectOne("adminSelect",vo);
	}
	
	//user 이름 수정(회원관리)
	public int adminUserUpdate(UsersVO vo) {
		
		return sqlSession.update("adminUserUpdate",vo);
	}
	
	//user 삭제(회원관리)
	public int adminUserDelete(UsersVO vo) {
		
		return sqlSession.delete("adminUserDelete",vo);
	}
	
	public List<HistoryVO> userHistorySelect(HistoryVO vo){
		
		return sqlSession.selectList("adminHistorySelect", vo);
	}
	
	//대출, 반납내역(하루기준) 전체조회
	@Override
	public List<HistoryVO> historySelectList() {

		return sqlSession.selectList("historyListSelect");
	}
	
	//user 대출 전체 목록
	public List<HistoryVO> userHistorySelectList(HistoryVO vo){
		
		return sqlSession.selectList("userHistorySelectList",vo);
	}
	
	//user 한명 검색(대출반납관리)
	@Override
	public HistoryVO historySelect(HistoryVO vo) {
		return sqlSession.selectOne("adminUserSelect",vo);
	}

	@Override
	public int historyInsert(HistoryVO vo) {
		
		return sqlSession.insert("historyInsert", vo);
	}

	@Override
	public int historyUpdate(HistoryVO vo) {
		return sqlSession.update("historyUpdate", vo);
	}

	@Override
	public int historyDelete(HistoryVO vo) {
		return 0;
	}

}
