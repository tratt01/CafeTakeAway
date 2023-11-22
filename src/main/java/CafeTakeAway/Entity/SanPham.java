package CafeTakeAway.Entity;

public class SanPham {
	private String MaSP;
	private String TenSP;
	private float DonGia;
	private float DonGiaSauKM;
	private String TinhTrang;
	private String MieuTa;
	private String anh;
	private boolean KhuyenMai;
	private boolean MoiNhat;
	private String MaLoai;
	
	public String getMaSP() {
		return MaSP;
	}
	public void setMaSP(String maSP) {
		MaSP = maSP;
	}
	public String getTenSP() {
		return TenSP;
	}
	public void setTenSP(String tenSP) {
		TenSP = tenSP;
	}
	public float getDonGia() {
		return DonGia;
	}
	public float getDonGiaSauKM() {
		return DonGiaSauKM;
	}
	public void setDonGiaSauKM(float donGiaSauKM) {
		DonGiaSauKM = donGiaSauKM;
	}
	public void setDonGia(float donGia) {
		DonGia = donGia;
	}
	public String getTinhTrang() {
		return TinhTrang;
	}
	public void setTinhTrang(String tinhTrang) {
		TinhTrang = tinhTrang;
	}
	public String getMieuTa() {
		return MieuTa;
	}
	public void setMieuTa(String mieuTa) {
		MieuTa = mieuTa;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public boolean isKhuyenMai() {
		return KhuyenMai;
	}
	public void setKhuyenMai(boolean khuyenMai) {
		KhuyenMai = khuyenMai;
	}
	public boolean isMoiNhat() {
		return MoiNhat;
	}
	public void setMoiNhat(boolean moiNhat) {
		MoiNhat = moiNhat;
	}
	public String getMaLoai() {
		return MaLoai;
	}
	public void setMaLoai(String maLoai) {
		MaLoai = maLoai;
	}
	public SanPham(String maSP, String tenSP, float donGia, float donGiaSauKM, String tinhTrang, String mieuTa,
			String anh, boolean khuyenMai, boolean moiNhat, String maLoai) {
		super();
		MaSP = maSP;
		TenSP = tenSP;
		DonGia = donGia;
		DonGiaSauKM = donGiaSauKM;
		if (DonGiaSauKM == 0) {
			DonGiaSauKM = donGia;
		}
		TinhTrang = tinhTrang;
		MieuTa = mieuTa;
		this.anh = anh;
		KhuyenMai = khuyenMai;
		MoiNhat = moiNhat;
		MaLoai = maLoai;
	}
	public SanPham() {
		super();
	}
	
	
	
	
	
}
