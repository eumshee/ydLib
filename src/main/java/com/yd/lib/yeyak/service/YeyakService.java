package com.yd.lib.yeyak.service;

import java.util.List;

import com.yd.lib.users.vo.UsersVO;
import com.yd.lib.yeyak.vo.YeyakVO;

public interface YeyakService {
	List<YeyakVO> yeyakManageList();
	int yeyakProcessUpdate(YeyakVO vo);
	int yeyakOneInsert(YeyakVO vo);
	List<UsersVO> yeyakUserSearch();
}
