package com.yd.lib.reply.vo;

import java.sql.Date;

public class ReplyVO {

	/*
		이름         널        유형            
		---------- -------- ------------- 
		RE_NUM     NOT NULL NUMBER        
		RE_BNUM    NOT NULL NUMBER        
		RE_TITLE   NOT NULL VARCHAR2(100) 
		RE_WRITER  NOT NULL VARCHAR2(20)  
		RE_CONTENT NOT NULL CLOB          
		RE_DATE    NOT NULL DATE          
	*/
	
	private int re_Num;
	private int re_Bnum;
	private String re_Title;
	private String re_Writer;
	private String re_Content;
	private Date re_Date;
	
	
	public int getRe_Num() {
		return re_Num;
	}
	public void setRe_Num(int re_Num) {
		this.re_Num = re_Num;
	}
	public int getRe_Bnum() {
		return re_Bnum;
	}
	public void setRe_Bnum(int re_Bnum) {
		this.re_Bnum = re_Bnum;
	}
	public String getRe_Title() {
		return re_Title;
	}
	public void setRe_Title(String re_Title) {
		this.re_Title = re_Title;
	}
	public String getRe_Writer() {
		return re_Writer;
	}
	public void setRe_Writer(String re_Writer) {
		this.re_Writer = re_Writer;
	}
	public String getRe_Content() {
		return re_Content;
	}
	public void setRe_Content(String re_Content) {
		this.re_Content = re_Content;
	}
	public Date getRe_Date() {
		return re_Date;
	}
	public void setRe_Date(Date re_Date) {
		this.re_Date = re_Date;
	}
}
