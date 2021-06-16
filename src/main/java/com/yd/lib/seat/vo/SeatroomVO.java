package com.yd.lib.seat.vo;

import java.sql.Date;

public class SeatroomVO {
	private int seat_pick_Num;
	private String user_Id;
	private int seat_Num;
	private Date seat_pick_Date;
	private Date seat_start_Time;
	private Date seat_end_Time;

	// seat테이블
	private int seat_Status;

	public int getSeat_pick_Num() {
		return seat_pick_Num;
	}

	public void setSeat_pick_Num(int seat_pick_Num) {
		this.seat_pick_Num = seat_pick_Num;
	}

	public String getUser_Id() {
		return user_Id;
	}

	public void setUser_Id(String user_Id) {
		this.user_Id = user_Id;
	}

	public int getSeat_Num() {
		return seat_Num;
	}

	public void setSeat_Num(int seat_Num) {
		this.seat_Num = seat_Num;
	}

	public Date getSeat_pick_Date() {
		return seat_pick_Date;
	}

	public void setSeat_pick_Date(Date seat_pick_Date) {
		this.seat_pick_Date = seat_pick_Date;
	}

	public Date getSeat_start_Time() {
		return seat_start_Time;
	}

	public void setSeat_start_Time(Date seat_start_Time) {
		this.seat_start_Time = seat_start_Time;
	}

	public Date getSeat_end_Time() {
		return seat_end_Time;
	}

	public void setSeat_end_Time(Date seat_end_Time) {
		this.seat_end_Time = seat_end_Time;
	}

	public int getSeat_Status() {
		return seat_Status;
	}

	public void setSeat_Status(int seat_Status) {
		this.seat_Status = seat_Status;
	}

}
