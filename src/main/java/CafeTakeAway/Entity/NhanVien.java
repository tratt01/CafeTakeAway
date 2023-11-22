package CafeTakeAway.Entity;

public class NhanVien {
	private String maNhanVien;
	private String ho;
	private String ten;
	private String ngaySinh;
	private String diaChi;
	private String gioiTinh;
	private String email;
	private String sdt;
	private String cmnd;
	private String maDiaDiem;
	private String chucVu;
	
	public NhanVien() {
		super();
	}
	
	public NhanVien(String maNhanVien, String ho, String ten, String ngaySinh, String diaChi, String gioiTinh,
			String email, String sdt, String cmnd, String maDiaDiem, String chucVu) {
		super();
		this.maNhanVien = maNhanVien;
		this.ho = ho;
		this.ten = ten;
		this.ngaySinh = ngaySinh;
		this.diaChi = diaChi;
		this.gioiTinh = gioiTinh;
		this.email = email;
		this.sdt = sdt;
		this.cmnd = cmnd;
		this.maDiaDiem = maDiaDiem;
		this.chucVu = chucVu;
	}

	public String getMaNhanVien() {
		return maNhanVien;
	}
	public void setMaNhanVien(String maNhanVien) {
		this.maNhanVien = maNhanVien;
	}
	public String getHo() {
		return ho;
	}
	public void setHo(String ho) {
		this.ho = ho;
	}
	public String getTen() {
		return ten;
	}
	public void setTen(String ten) {
		this.ten = ten;
	}
	public String getNgaySinh() {
		return ngaySinh;
	}
	public void setNgaySinh(String ngaySinh) {
		this.ngaySinh = ngaySinh;
	}
	public String getDiaChi() {
		return diaChi;
	}
	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}
	public String getGioiTinh() {
		return gioiTinh;
	}
	public void setGioiTinh(String gioiTinh) {
		this.gioiTinh = gioiTinh;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSdt() {
		return sdt;
	}
	public void setSdt(String sdt) {
		this.sdt = sdt;
	}
	public String getCmnd() {
		return cmnd;
	}
	public void setCmnd(String cmnd) {
		this.cmnd = cmnd;
	}
	public String getMaDiaDiem() {
		return maDiaDiem;
	}
	public void setMaDiaDiem(String maDiaDiem) {
		this.maDiaDiem = maDiaDiem;
	}

	public String getChucVu() {
		return chucVu;
	}

	public void setChucVu(String chucVu) {
		this.chucVu = chucVu;
	}

	
	
}
