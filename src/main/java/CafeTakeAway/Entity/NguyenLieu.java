package CafeTakeAway.Entity;

public class NguyenLieu {
	public String maNL;
	public String tenNL;
	public String donVi;
	public int soLuong;
	
	public NguyenLieu() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public NguyenLieu(String maNL, String tenNL, String donVi, int soLuong) {
		super();
		this.maNL = maNL;
		this.tenNL = tenNL;
		this.donVi = donVi;
		this.soLuong = soLuong;
	}

	public String getMaNL() {
		return maNL;
	}
	public void setMaNL(String maNL) {
		this.maNL = maNL;
	}
	public String getTenNL() {
		return tenNL;
	}
	public void setTenNL(String tenNL) {
		this.tenNL = tenNL;
	}
	public String getDonVi() {
		return donVi;
	}
	public void setDonVi(String donVi) {
		this.donVi = donVi;
	}
	public int getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	
	
	
}
