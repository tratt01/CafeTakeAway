package CafeTakeAway.Entity;

public class LoaiSanPham {
	private int MaLoai;
	private String TenLoai;
	
	public int getMaLoai() {
		return MaLoai;
	}
	public void setMaLoai(int maLoai) {
		MaLoai = maLoai;
	}
	public String getTenLoai() {
		return TenLoai;
	}
	public void setTenLoai(String tenLoai) {
		TenLoai = tenLoai;
	}
	
	public LoaiSanPham() {
		super();
	}
	public LoaiSanPham(int maLoai, String tenLoai) {
		super();
		MaLoai = maLoai;
		TenLoai = tenLoai;
	}
	
	
	
	
	
	
	
}
