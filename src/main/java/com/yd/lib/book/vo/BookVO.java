package com.yd.lib.book.vo;

public class BookVO {
	private int book_Num;
	private String book_Gubun;
	private String book_Title;
	private String book_Aut;
	private String book_Location;
	private String book_Byn;
	private String book_Pub;
	private String book_Pubdate;
	private String book_Indate;
	private String book_Img;
	private String book_Desc;
	private String book_Subject;
	private String book_Isbn;
	private String book_Bigo;
	private int all_Book_Cnt; //중복 책 수
	private int can_Book_Cnt; //중복 책 중 대출가능한 책의 수
	private String book_Order;//정렬을 위한 값
	private String return_Duedate;//반남예정일
	private String yeyak_Processing;//예약유무 파악
	private int firstCnt;
	private int lastCnt;
	
	public String getBook_Bigo() {
		return book_Bigo;
	}
	public void setBook_Bigo(String book_Bigo) {
		this.book_Bigo = book_Bigo;
	}
	public int getBook_Num() {
		return book_Num;
	}
	public void setBook_Num(int book_Num) {
		this.book_Num = book_Num;
	}
	public String getBook_Gubun() {
		return book_Gubun;
	}
	public void setBook_Gubun(String book_Gubun) {
		this.book_Gubun = book_Gubun;
	}
	public String getBook_Title() {
		return book_Title;
	}
	public void setBook_Title(String book_Title) {
		this.book_Title = book_Title;
	}
	public String getBook_Aut() {
		return book_Aut;
	}
	public void setBook_Aut(String book_Aut) {
		this.book_Aut = book_Aut;
	}
	public String getBook_Location() {
		return book_Location;
	}
	public void setBook_Location(String book_Location) {
		this.book_Location = book_Location;
	}
	public String getBook_Byn() {
		return book_Byn;
	}
	public void setBook_Byn(String book_Byn) {
		this.book_Byn = book_Byn;
	}
	public String getBook_Pub() {
		return book_Pub;
	}
	public void setBook_Pub(String book_Pub) {
		this.book_Pub = book_Pub;
	}
	public String getBook_Pubdate() {
		return book_Pubdate;
	}
	public void setBook_Pubdate(String book_Pubdate) {
		this.book_Pubdate = book_Pubdate;
	}
	public String getBook_Indate() {
		return book_Indate;
	}
	public void setBook_Indate(String book_Indate) {
		this.book_Indate = book_Indate;
	}
	public String getBook_Img() {
		return book_Img;
	}
	public void setBook_Img(String book_Img) {
		this.book_Img = book_Img;
	}
	public String getBook_Desc() {
		return book_Desc;
	}
	public void setBook_Desc(String book_Desc) {
		this.book_Desc = book_Desc;
	}
	public String getBook_Subject() {
		return book_Subject;
	}
	public void setBook_Subject(String book_Subject) {
		this.book_Subject = book_Subject;
	}
	public String getBook_Isbn() {
		return this.book_Isbn;
	}
	public void setBook_Isbn(String book_Isbn) {
		this.book_Isbn = book_Isbn;
	}
	public int getAll_Book_Cnt() {
		return all_Book_Cnt;
	}
	public void setAll_Book_Cnt(int all_Book_Cnt) {
		this.all_Book_Cnt = all_Book_Cnt;
	}
	public int getCan_Book_Cnt() {
		return can_Book_Cnt;
	}
	public void setCan_Book_Cnt(int can_Book_Cnt) {
		this.can_Book_Cnt = can_Book_Cnt;
	}
	public String getBook_Order() {
		return book_Order;
	}
	public void setBook_Order(String book_Order) {
		this.book_Order = book_Order;
	}
	public String getReturn_Duedate() {
		return return_Duedate;
	}
	public void setReturn_Duedate(String return_Duedate) {
		this.return_Duedate = return_Duedate;
	}
	public String getYeyak_Processing() {
		return yeyak_Processing;
	}
	public void setYeyak_Processing(String yeyak_Processing) {
		this.yeyak_Processing = yeyak_Processing;
	}
	public int getFirstCnt() {
		return firstCnt;
	}
	public void setFirstCnt(int firstCnt) {
		this.firstCnt = firstCnt;
	}
	public int getLastCnt() {
		return lastCnt;
	}
	public void setLastCnt(int lastCnt) {
		this.lastCnt = lastCnt;
	}
	
	
}
