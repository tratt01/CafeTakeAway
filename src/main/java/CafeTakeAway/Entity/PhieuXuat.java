package CafeTakeAway.Entity;

import java.sql.Date;

public class PhieuXuat {
	private String maPX;
	private String maNV;
	private String diaChi;
	private Date ngayXuat;
	public PhieuXuat() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PhieuXuat(String maPX, String maNV, String diaChi, Date ngayXuat) {
		super();
		this.maPX = maPX;
		this.maNV = maNV;
		this.diaChi = diaChi;
		this.ngayXuat = ngayXuat;
	}
	public String getMaPX() {
		return maPX;
	}
	public void setMaPX(String maPX) {
		this.maPX = maPX;
	}
	public String getMaNV() {
		return maNV;
	}
	public void setMaNV(String maNV) {
		this.maNV = maNV;
	}
	
	public String getDiaChi() {
		return diaChi;
	}
	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}
	public Date getNgayXuat() {
		return ngayXuat;
	}
	public void setNgayXuat(Date ngayXuat) {
		this.ngayXuat = ngayXuat;
	}
	
	
}
