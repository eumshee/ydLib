package com.yd.lib.info.web;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yd.lib.book.vo.BookVO;

@Repository("InfoDAO")
public class InfoServiceImpl {
	@Autowired
	SqlSession sqlsession;
	
	List<BookVO> infoMaterialList() {
		return sqlsession.selectList("infoMaterial");
	}
}
