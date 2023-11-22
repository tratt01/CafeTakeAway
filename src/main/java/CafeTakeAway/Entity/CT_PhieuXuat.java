package CafeTakeAway.Entity;

public class CT_PhieuXuat {
	private String maPX;
	private String maNL;
	private String soLuong;
	private String donVi;
	private String tenNL;
	public CT_PhieuXuat() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CT_PhieuXuat(String maPX, String maNL, String soLuong, String donVi, String tenNL) {
		super();
		this.maPX = maPX;
		this.maNL = maNL;
		this.soLuong = soLuong;
		this.donVi = donVi;
		this.tenNL = tenNL;
	}
	public String getMaPX() {
		return maPX;
	}
	public void setMaPX(String maPX) {
		this.maPX = maPX;
	}
	public String getMaNL() {
		return maNL;
	}
	public void setMaNL(String maNL) {
		this.maNL = maNL;
	}
	public String getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(String soLuong) {
		this.soLuong = soLuong;
	}
	public String getDonVi() {
		return donVi;
	}
	public void setDonVi(String donVi) {
		this.donVi = donVi;
	}
	public String getTenNL() {
		return tenNL;
	}
	public void setTenNL(String tenNL) {
		this.tenNL = tenNL;
	}
	
	
}
