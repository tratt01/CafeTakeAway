package CafeTakeAway.Entity;

public class NhaCungCap {
	public String maNCC;
	public String tenNCC;
	public String email;
	public String sdt;
	public String diaChi;
	public NhaCungCap() {
		super();
		// TODO Auto-generated constructor stub
	}
	public NhaCungCap(String maNCC, String tenNCC, String email, String sdt, String diaChi) {
		super();
		this.maNCC = maNCC;
		this.tenNCC = tenNCC;
		this.email = email;
		this.sdt = sdt;
		this.diaChi = diaChi;
	}
	public String getMaNCC() {
		return maNCC;
	}
	public void setMaNCC(String maNCC) {
		this.maNCC = maNCC;
	}
	public String getTenNCC() {
		return tenNCC;
	}
	public void setTenNCC(String tenNCC) {
		this.tenNCC = tenNCC;
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
	public String getDiaChi() {
		return diaChi;
	}
	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}
	
	
	
}
