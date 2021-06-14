package com.yd.lib.yeyak.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yd.lib.yeyak.service.YeyakService;
import com.yd.lib.yeyak.vo.YeyakVO;

@Repository
public class YeyakServiceImpl implements YeyakService {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<YeyakVO> yeyakManageList() {
		return sqlSession.selectList("yeyakManageList");
	}

	@Override
	public int yeyakProcessUpdate(YeyakVO vo) {
		return sqlSession.update("yeyakProcessUpdate",vo);
	} 
	
	
}
