package com.yd.lib.board.vo;

import java.sql.Date;

public class BoardVO {

	/*
	BOARD_ID      NOT NULL NUMBER        
	BOARD_TITLE   NOT NULL VARCHAR2(100) 
	BOARD_WRITER  NOT NULL VARCHAR2(100) 
	BOARD_CONTENT NOT NULL CLOB          
	BOARD_DATE    NOT NULL DATE          
	BOARD_HIT              NUMBER        
	BOARD_REPLY            NUMBER     
	BOARD_OPEN             VARCHAR2(2)      
	*/
	
	private int board_Id;
	private String board_Title;
	private String board_Writer;
	private String board_Content;
	private Date board_Date;
	private int board_Hit;
	private int board_Reply;
	private String board_Open;
	
	
	
	public String getBoard_Open() {
		return board_Open;
	}
	public void setBoard_Open(String board_Open) {
		this.board_Open = board_Open;
	}
	public int getBoard_Id() {
		return board_Id;
	}
	public void setBoard_Id(int board_Id) {
		this.board_Id = board_Id;
	}
	public String getBoard_Title() {
		return board_Title;
	}
	public void setBoard_Title(String board_Title) {
		this.board_Title = board_Title;
	}
	public String getBoard_Writer() {
		return board_Writer;
	}
	public void setBoard_Writer(String board_Writer) {
		this.board_Writer = board_Writer;
	}
	public String getBoard_Content() {
		return board_Content;
	}
	public void setBoard_Content(String board_Content) {
		this.board_Content = board_Content;
	}
	public Date getBoard_Date() {
		return board_Date;
	}
	public void setBoard_Date(Date board_Date) {
		this.board_Date = board_Date;
	}
	public int getBoard_Hit() {
		return board_Hit;
	}
	public void setBoard_Hit(int board_Hit) {
		this.board_Hit = board_Hit;
	}
	public int getBoard_Reply() {
		return board_Reply;
	}
	public void setBoard_Reply(int board_Reply) {
		this.board_Reply = board_Reply;
	}
	
	
	
}
