package com.yd.lib.history.service;

import java.util.List;

import com.yd.lib.history.vo.HistoryVO;

public interface HistoryService {

	List<HistoryVO> historySelectList();
	HistoryVO historySelect();
	int historyInsert(HistoryVO vo);
	int historyUpdate(HistoryVO vo);
	int historyDelete(HistoryVO vo);
	
		
}
