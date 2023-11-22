package CafeTakeAway.Dto;

public class ChiTietCongThucDto {
	private int maSP;
	private String tenSP;
	private String maNL;
	private String tenNL;
	private int soLuong;
	private String donVi;
	public ChiTietCongThucDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ChiTietCongThucDto(int maSP, String tenSP, String maNL, String tenNL, int soLuong, String donVi) {
		super();
		this.maSP = maSP;
		this.tenSP = tenSP;
		this.maNL = maNL;
		this.tenNL = tenNL;
		this.soLuong = soLuong;
		this.donVi = donVi;
	}
	public int getMaSP() {
		return maSP;
	}
	public void setMaSP(int maSP) {
		this.maSP = maSP;
	}
	public String getTenSP() {
		return tenSP;
	}
	public void setTenSP(String tenSP) {
		this.tenSP = tenSP;
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
	public int getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	public String getDonVi() {
		return donVi;
	}
	public void setDonVi(String donVi) {
		this.donVi = donVi;
	}
	
	
}
