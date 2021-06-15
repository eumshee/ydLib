package com.yd.lib.book.service;

import java.util.List;

import com.yd.lib.book.vo.BookVO;
import com.yd.lib.users.vo.UsersVO;
import com.yd.lib.yeyak.vo.YeyakVO;

public interface BookService {
	public List<BookVO> searchBookList(BookVO vo);
	public List<BookVO> bookDetail(BookVO vo);
	public int userYeyakCheck(UsersVO vo);
	public void userYeyakInsert(YeyakVO vo);
	
}
