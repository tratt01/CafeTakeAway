package CafeTakeAway.Entity;

public class CT_PhieuNhap {
	private String maPN;
	private String maNL;
	private int soLuong;
	private float donGia;
	
	public CT_PhieuNhap() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CT_PhieuNhap(String maPN, String maNL, int soLuong, float donGia) {
		super();
		this.maPN = maPN;
		this.maNL = maNL;
		this.soLuong = soLuong;
		this.donGia = donGia;
	}
	public String getMaPN() {
		return maPN;
	}
	public void setMaPN(String maPN) {
		this.maPN = maPN;
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
	public float getDonGia() {
		return donGia;
	}
	public void setDonGia(float donGia) {
		this.donGia = donGia;
	}
	
	
}
