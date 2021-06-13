package com.yd.lib.notice.vo;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

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
	private String notice_Content;
	private Date notice_Date;
	private int notice_Hit;
	private String notice_File;
	private MultipartFile uploadFile;
	
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	
	
	public String getNotice_File() {
		return notice_File;
	}
	public void setNotice_File(String notice_File) {
		this.notice_File = notice_File;
	}
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
	public String getNotice_Content() {
		return notice_Content;
	}
	public void setNotice_Content(String notice_Content) {
		this.notice_Content = notice_Content;
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
