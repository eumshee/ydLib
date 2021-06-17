package com.yd.lib.book.service;

import java.util.List;

import com.yd.lib.book.vo.BookVO;
import com.yd.lib.users.vo.UsersVO;
import com.yd.lib.wish.vo.WishVO;
import com.yd.lib.yeyak.vo.YeyakVO;

public interface BookService {
	public List<BookVO> searchBookList(BookVO vo);
	public List<BookVO> bookDetail(BookVO vo);
	public int userYeyakCheck(UsersVO vo);
	public void userYeyakInsert(YeyakVO vo);
	public List<BookVO> bookSerchListPaging(BookVO vo);
	public List<BookVO> newBook(BookVO vo);
	public List<BookVO> newBookPaging(BookVO vo);
	public List<BookVO> bestBookTop10();
	public List<BookVO> subJectBestBookTop10(BookVO vo);
	public void wishBookInsert(WishVO vo);
	public int wishCnt(WishVO vo);
	
}
