package com.yd.lib.yeyak.vo;

public class YeyakVO {
	private int yeyak_Num;
	private int book_Num;
	private String user_Id;
	private String yeyak_Submit;
	private String yeyak_Start;
	private String yeyak_End;
	private String yeyak_Processing;
	private String book_Isbn; // book_num 상세조회

	public String getBook_Isbn() {
		return book_Isbn;
	}

	public void setBook_Isbn(String book_Isbn) {
		this.book_Isbn = book_Isbn;
	}

	public String getYeyak_Processing() {
		return yeyak_Processing;
	}

	public void setYeyak_Processing(String yeyak_Processing) {
		this.yeyak_Processing = yeyak_Processing;
	}

	public int getYeyak_Num() {
		return yeyak_Num;
	}

	public void setYeyak_Num(int yeyak_Num) {
		this.yeyak_Num = yeyak_Num;
	}

	public int getBook_Num() {
		return book_Num;
	}

	public void setBook_Num(int book_Num) {
		this.book_Num = book_Num;
	}

	public String getUser_Id() {
		return user_Id;
	}

	public void setUser_Id(String user_Id) {
		this.user_Id = user_Id;
	}

	public String getYeyak_Submit() {
		return yeyak_Submit;
	}

	public void setYeyak_Submit(String yeyak_Submit) {
		this.yeyak_Submit = yeyak_Submit;
	}

	public String getYeyak_Start() {
		return yeyak_Start;
	}

	public void setYeyak_Start(String yeyak_Start) {
		this.yeyak_Start = yeyak_Start;
	}

	public String getYeyak_End() {
		return yeyak_End;
	}

	public void setYeyak_End(String yeyak_End) {
		this.yeyak_End = yeyak_End;
	}

}
