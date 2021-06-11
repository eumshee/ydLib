package com.yd.lib.history.vo;

import java.sql.Date;

public class HistoryVO {
	private int loan_id;
	private String user_id;
	private int book_num;
	private Date loan_date;
	private Date return_duedate;
	private Date return_date;
	private Date return_delaydats;
	private String loan_status;
	
	public int getLoan_id() {
		return loan_id;
	}
	public void setLoan_id(int loan_id) {
		this.loan_id = loan_id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public int getBook_num() {
		return book_num;
	}
	public void setBook_num(int book_num) {
		this.book_num = book_num;
	}
	public Date getLoan_date() {
		return loan_date;
	}
	public void setLoan_date(Date loan_date) {
		this.loan_date = loan_date;
	}
	public Date getReturn_duedate() {
		return return_duedate;
	}
	public void setReturn_duedate(Date return_duedate) {
		this.return_duedate = return_duedate;
	}
	public Date getReturn_date() {
		return return_date;
	}
	public void setReturn_date(Date return_date) {
		this.return_date = return_date;
	}
	public Date getReturn_delaydats() {
		return return_delaydats;
	}
	public void setReturn_delaydats(Date return_delaydats) {
		this.return_delaydats = return_delaydats;
	}
	public String getLoan_status() {
		return loan_status;
	}
	public void setLoan_status(String loan_status) {
		this.loan_status = loan_status;
	}
	
}
