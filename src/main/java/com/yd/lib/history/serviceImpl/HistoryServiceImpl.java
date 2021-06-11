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
	
	public UsersVO adminUsersSelect(UsersVO vo) {
		
		return null;
	}


	@Override
	public List<HistoryVO> historySelectList() {

		return null;
	}

	@Override
	public HistoryVO historySelect() {
		return null;
	}

	@Override
	public int historyInsert(HistoryVO vo) {
		return 0;
	}

	@Override
	public int historyUpdate(HistoryVO vo) {
		return 0;
	}

	@Override
	public int historyDelete(HistoryVO vo) {
		return 0;
	}

}
