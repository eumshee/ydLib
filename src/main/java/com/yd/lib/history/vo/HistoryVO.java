package com.yd.lib.history.vo;

import java.sql.Date;

public class HistoryVO {
	private int loan_Id;
	private String user_Id;
	private int book_Num;
	private Date loan_Date;
	private Date return_Duedate;
	private Date return_Date;
	private int return_Delaydays;
	private String loan_Status;
	private String user_Name;
	private String user_Gubun;
	private String user_Gender;
	private String user_Birth;
	private String user_Phone;
	private String user_Email;

	public int getLoan_Id() {
		return loan_Id;
	}

	public void setLoan_Id(int loan_Id) {
		this.loan_Id = loan_Id;
	}

	public String getUser_Id() {
		return user_Id;
	}

	public void setUser_Id(String user_Id) {
		this.user_Id = user_Id;
	}

	public int getBook_Num() {
		return book_Num;
	}

	public void setBook_Num(int book_Num) {
		this.book_Num = book_Num;
	}

	public Date getLoan_Date() {
		return loan_Date;
	}

	public void setLoan_Date(Date loan_Date) {
		this.loan_Date = loan_Date;
	}

	public Date getReturn_Duedate() {
		return return_Duedate;
	}

	public void setReturn_Duedate(Date return_Duedate) {
		this.return_Duedate = return_Duedate;
	}

	public Date getReturn_Date() {
		return return_Date;
	}

	public void setReturn_Date(Date return_Date) {
		this.return_Date = return_Date;
	}


	public int getReturn_Delaydays() {
		return return_Delaydays;
	}

	public void setReturn_Delaydays(int return_Delaydays) {
		this.return_Delaydays = return_Delaydays;
	}

	public String getLoan_Status() {
		return loan_Status;
	}

	public void setLoan_Status(String loan_Status) {
		this.loan_Status = loan_Status;
	}

	public String getUser_Name() {
		return user_Name;
	}

	public void setUser_Name(String user_Name) {
		this.user_Name = user_Name;
	}

	public String getUser_Gubun() {
		return user_Gubun;
	}

	public void setUser_Gubun(String user_Gubun) {
		this.user_Gubun = user_Gubun;
	}

	public String getUser_Gender() {
		return user_Gender;
	}

	public void setUser_Gender(String user_Gender) {
		this.user_Gender = user_Gender;
	}

	public String getUser_Birth() {
		return user_Birth;
	}

	public void setUser_Birth(String user_Birth) {
		this.user_Birth = user_Birth;
	}

	public String getUser_Phone() {
		return user_Phone;
	}

	public void setUser_Phone(String user_Phone) {
		this.user_Phone = user_Phone;
	}

	public String getUser_Email() {
		return user_Email;
	}

	public void setUser_Email(String user_Email) {
		this.user_Email = user_Email;
	}

}