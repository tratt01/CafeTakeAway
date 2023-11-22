package CafeTakeAway.Entity;

import java.sql.Date;

public class DiaDiem {
	public String maDiaDiem;
	public String maNV;
	public String diaChi;
	public Date ngayThanhToan;
	public DiaDiem() {
		super();
		// TODO Auto-generated constructor stub
	}
	public DiaDiem(String maDiaDiem, String maNV, String diaChi, Date ngayThanhToan) {
		super();
		this.maDiaDiem = maDiaDiem;
		this.maNV = maNV;
		this.diaChi = diaChi;
		this.ngayThanhToan = ngayThanhToan;
	}
	public String getMaDiaDiem() {
		return maDiaDiem;
	}
	public void setMaDiaDiem(String maDiaDiem) {
		this.maDiaDiem = maDiaDiem;
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
	public Date getNgayThanhToan() {
		return ngayThanhToan;
	}
	public void setNgayThanhToan(Date ngayThanhToan) {
		this.ngayThanhToan = ngayThanhToan;
	}
	
	
	
}
