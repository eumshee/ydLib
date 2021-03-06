package com.yd.lib.users.vo;


public class UserLoanInfoVO {
	
	private String user_Id;
	private String user_Name;
	private String book_Isbn;
	private String book_Title;
	private String book_Img;
	private String book_Aut;
	private String book_Pub;
	private String book_Location;
	private String book_Subject;
	private String loan_Date;
	private String return_Duedate;
	private int return_Delaydays;
	private String loan_Status;
	
	
	
	public String getLoan_Status() {
		return loan_Status;
	}
	public void setLoan_Status(String loan_Status) {
		this.loan_Status = loan_Status;
	}
	public String getBook_Isbn() {
		return book_Isbn;
	}
	public void setBook_Isbn(String book_Isbn) {
		this.book_Isbn = book_Isbn;
	}
	
	public String getBook_Img() {
		return book_Img;
	}
	public void setBook_Img(String book_Img) {
		this.book_Img = book_Img;
	}
	
	public String getUser_Id() {
		return user_Id;
	}
	public void setUser_Id(String user_Id) {
		this.user_Id = user_Id;
	}
	public String getUser_Name() {
		return user_Name;
	}
	public void setUser_Name(String user_Name) {
		this.user_Name = user_Name;
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
	public String getBook_Pub() {
		return book_Pub;
	}
	public void setBook_Pub(String book_Pub) {
		this.book_Pub = book_Pub;
	}
	public String getBook_Location() {
		return book_Location;
	}
	public void setBook_Location(String book_Location) {
		this.book_Location = book_Location;
	}
	public String getBook_Subject() {
		return book_Subject;
	}
	public void setBook_Subject(String book_Subject) {
		this.book_Subject = book_Subject;
	}
	
	
	public String getLoan_Date() {
		return loan_Date;
	}
	public void setLoan_Date(String loan_Date) {
		this.loan_Date = loan_Date;
	}
	public String getReturn_Duedate() {
		return return_Duedate;
	}
	public void setReturn_Duedate(String return_Duedate) {
		this.return_Duedate = return_Duedate;
	}
	public int getReturn_Delaydays() {
		return return_Delaydays;
	}
	public void setReturn_Delaydays(int return_Delaydays) {
		this.return_Delaydays = return_Delaydays;
	}
	
	
}
