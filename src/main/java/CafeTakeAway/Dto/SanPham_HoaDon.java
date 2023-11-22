package CafeTakeAway.Dto;

public class SanPham_HoaDon {
	public String anh;
	public String tenSP;
	public int soLuong;
	public double giaBan;
	public double giaBanSauKM;
	
	public SanPham_HoaDon() {
		super();
	}
	
	public SanPham_HoaDon(String anh, String tenSP, int soLuong, double giaBan, double giaBanSauKM) {
		super();
		this.anh = anh;
		this.tenSP = tenSP;
		this.soLuong = soLuong;
		this.giaBan = giaBan;
		this.giaBanSauKM = giaBanSauKM;
		if (giaBanSauKM != 0) 
			this.giaBan = giaBanSauKM;
	}

	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public String getTenSP() {
		return tenSP;
	}
	public void setTenSP(String tenSP) {
		this.tenSP = tenSP;
	}
	public int getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	public double getGiaBan() {
		return giaBan;
	}
	public void setGiaBan(double giaBan) {
		this.giaBan = giaBan;
	}
	public double getGiaBanSauKM() {
		return giaBanSauKM;
	}
	public void setGiaBanSauKM(double giaBanSauKM) {
		this.giaBanSauKM = giaBanSauKM;
	}
	
}
