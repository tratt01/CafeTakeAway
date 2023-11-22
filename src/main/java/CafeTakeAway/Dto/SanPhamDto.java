package CafeTakeAway.Dto;

public class SanPhamDto {
	private String tenSP;
	private int maLoai;
	private float donGia;
	private String mieuTa;
	
	public SanPhamDto() {
		super();
	}
	
	public SanPhamDto(String tenSP, int maLoai, float donGia, String mieuTa) {
		super();
		this.tenSP = tenSP;
		this.maLoai = maLoai;
		this.donGia = donGia;
		this.mieuTa = mieuTa;
	}
	public String getTenSP() {
		return tenSP;
	}
	public void setTenSP(String tenSP) {
		this.tenSP = tenSP;
	}
	public int getMaLoai() {
		return maLoai;
	}
	public void setMaLoai(int maLoai) {
		this.maLoai = maLoai;
	}
	public float getDonGia() {
		return donGia;
	}
	public void setDonGia(float donGia) {
		this.donGia = donGia;
	}
	public String getMieuTa() {
		return mieuTa;
	}
	public void setMieuTa(String mieuTa) {
		this.mieuTa = mieuTa;
	}
	
	
}
