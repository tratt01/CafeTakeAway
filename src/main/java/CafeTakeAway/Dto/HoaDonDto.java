package CafeTakeAway.Dto;

public class HoaDonDto {
	public String maDiaDiem;
	public String diaChi;
	public int maHoaDon;
	public String maNhanVien;
	public String ngayLap;
	public double tongTien;
	
	public HoaDonDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public HoaDonDto(String maDiaDiem, String diaChi, int maHoaDon, String maNhanVien, String ngayLap, double tongTien) {
		super();
		this.maDiaDiem = maDiaDiem;
		this.diaChi = diaChi;
		this.maHoaDon = maHoaDon;
		this.maNhanVien = maNhanVien;
		this.ngayLap = ngayLap;
		this.tongTien = tongTien;
	}

	public String getMaDiaDiem() {
		return maDiaDiem;
	}

	public void setMaDiaDiem(String maDiaDiem) {
		this.maDiaDiem = maDiaDiem;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public int getMaHoaDon() {
		return maHoaDon;
	}

	public void setMaHoaDon(int maHoaDon) {
		this.maHoaDon = maHoaDon;
	}

	public String getMaNhanVien() {
		return maNhanVien;
	}

	public void setMaNhanVien(String maNhanVien) {
		this.maNhanVien = maNhanVien;
	}

	public String getngayLap() {
		return ngayLap;
	}

	public void setngayLap(String ngayLap) {
		this.ngayLap = ngayLap;
	}

	public double getTongTien() {
		return tongTien;
	}

	public void setTongTien(double tongTien) {
		this.tongTien = tongTien;
	}
}
