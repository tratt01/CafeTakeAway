package CafeTakeAway.Entity;

import java.sql.Date;

public class PhieuNhap {
	private String maPN;
	private String maNV;
	private String maNCC;
	private Date ngayNhap;
	public PhieuNhap() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PhieuNhap(String maPN, String maNV, String maNCC, Date ngayNhap) {
		super();
		this.maPN = maPN;
		this.maNV = maNV;
		this.maNCC = maNCC;
		this.ngayNhap = ngayNhap;
	}
	public String getMaPN() {
		return maPN;
	}
	public void setMaPN(String maPN) {
		this.maPN = maPN;
	}
	public String getMaNV() {
		return maNV;
	}
	public void setMaNV(String maNV) {
		this.maNV = maNV;
	}
	public Date getNgayNhap() {
		return ngayNhap;
	}
	public void setNgayNhap(Date ngayNhap) {
		this.ngayNhap = ngayNhap;
	}
	public String getMaNCC() {
		return maNCC;
	}
	public void setMaNCC(String maNCC) {
		this.maNCC = maNCC;
	}
	
	
	
	
}
