package CafeTakeAway.Entity;

public class CongThuc {
	public int maSP;
	public String maNL;
	public int soLuong;
	public String donVi;
	
	public CongThuc() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public CongThuc(int maSP, String maNL, int soLuong, String donVi) {
		super();
		this.maSP = maSP;
		this.maNL = maNL;
		this.soLuong = soLuong;
		this.donVi = donVi;
	}
	
	public int getMaSP() {
		return maSP;
	}
	public void setMaSP(int maSP) {
		this.maSP = maSP;
	}
	public String getMaNL() {
		return maNL;
	}
	public void setMaNL(String maNL) {
		this.maNL = maNL;
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
