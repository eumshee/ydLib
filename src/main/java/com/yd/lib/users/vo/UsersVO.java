package com.yd.lib.users.vo;

import java.util.Date;

public class UsersVO {
	
	private String user_Id;
	private String user_Name;
	private String user_Pw;
	private String user_Gubun;
	private String user_Gender;
	private String user_Birth;
	private String user_Phone;
	private String user_Addr;
	private String user_Email;
	private Date user_Loansus;
	private int return_Delaydays;
	
	
	
	public int getReturn_Delaydays() {
		return return_Delaydays;
	}
	public void setReturn_Delaydays(int return_Delaydays) {
		this.return_Delaydays = return_Delaydays;
	}
	public Date getUser_Loansus() {
		return user_Loansus;
	}
	public void setUser_Loansus(Date user_Loansus) {
		this.user_Loansus = user_Loansus;
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
	public String getUser_Pw() {
		return user_Pw;
	}
	public void setUser_Pw(String user_Pw) {
		this.user_Pw = user_Pw;
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
	public String getUser_Addr() {
		return user_Addr;
	}
	public void setUser_Addr(String user_Addr) {
		this.user_Addr = user_Addr;
	}
	public String getUser_Email() {
		return user_Email;
	}
	public void setUser_Email(String user_Email) {
		this.user_Email = user_Email;
	}
	@Override
	public String toString() {
		return "UsersVO [user_Id=" + user_Id + ", user_Name=" + user_Name + ", user_Pw=" + user_Pw + ", user_Gubun="
				+ user_Gubun + ", user_Gender=" + user_Gender + ", user_Birth=" + user_Birth + ", user_Phone="
				+ user_Phone + ", user_Addr=" + user_Addr + ", user_Email=" + user_Email + "]";
	}
	
	
}
