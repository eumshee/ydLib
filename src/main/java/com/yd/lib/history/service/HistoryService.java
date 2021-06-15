package com.yd.lib.history.service;

import java.util.List;

import com.yd.lib.history.vo.HistoryVO;
import com.yd.lib.users.vo.UsersVO;

public interface HistoryService {

	List<HistoryVO> historySelectList();
	UsersVO historySelect(HistoryVO vo);
	int historyInsert(HistoryVO vo);
	int historyUpdate(HistoryVO vo);
	int historyDelete(HistoryVO vo);
	
		
}
