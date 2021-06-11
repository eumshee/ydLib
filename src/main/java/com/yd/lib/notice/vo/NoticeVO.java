package com.yd.lib.notice.vo;

import java.sql.Date;

public class NoticeVO {
	/*
	NOTICE_ID      NOT NULL NUMBER        
	NOTICE_TITLE   NOT NULL VARCHAR2(100) 
	NOTICE_CONTENT NOT NULL CLOB          
	NOTICE_DATE    NOT NULL DATE          
	NOTICE_HIT              NUMBER        
	*/
	
	private int notice_Id;
	private String notice_Title;
	private String notice_Contente;
	private Date notice_Date;
	private int notice_Hit;
	
	public int getNotice_Id() {
		return notice_Id;
	}
	public void setNotice_Id(int notice_Id) {
		this.notice_Id = notice_Id;
	}
	public String getNotice_Title() {
		return notice_Title;
	}
	public void setNotice_Title(String notice_Title) {
		this.notice_Title = notice_Title;
	}
	public String getNotice_Contente() {
		return notice_Contente;
	}
	public void setNotice_Contente(String notice_Contente) {
		this.notice_Contente = notice_Contente;
	}
	public Date getNotice_Date() {
		return notice_Date;
	}
	public void setNotice_Date(Date notice_Date) {
		this.notice_Date = notice_Date;
	}
	public int getNotice_Hit() {
		return notice_Hit;
	}
	public void setNotice_Hit(int notice_Hit) {
		this.notice_Hit = notice_Hit;
	}
	
	
	
	
}
