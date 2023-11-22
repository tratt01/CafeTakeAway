package CafeTakeAway.Dto;

import java.sql.Date;

public class POST_HoaDon {
	private String maDiaDiem;
	private Date startDay;
	private Date endDay;
	
	public String getMaDiaDiem() {
		return maDiaDiem;
	}
	public void setMaDiaDiem(String maDiaDiem) {
		this.maDiaDiem = maDiaDiem;
	}
	public Date getStartDay() {
		return startDay;
	}
	public void setStartDay(Date startDay) {
		this.startDay = startDay;
	}
	public Date getEndDay() {
		return endDay;
	}
	public void setEndDay(Date endDay) {
		this.endDay = endDay;
	}
	
	
	
	
	
}
