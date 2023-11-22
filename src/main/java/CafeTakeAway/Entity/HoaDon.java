package CafeTakeAway.Entity;

public class HoaDon {
	public String MaHoaDon;
	public String MaNV;
	public String NgayLap;
	public double TongTien;
	
	public HoaDon() {
		super();
	}

	public HoaDon(String maHoaDon, String maNV, String ngayLap, double tongTien) {
		super();
		MaHoaDon = maHoaDon;
		MaNV = maNV;
		NgayLap = ngayLap;
		TongTien = tongTien;
	}
	
	public String getMaHoaDon() {
		return MaHoaDon;
	}
	public void setMaHoaDon(String maHoaDon) {
		MaHoaDon = maHoaDon;
	}
	public String getMaNV() {
		return MaNV;
	}
	public void setMaNV(String maNV) {
		MaNV = maNV;
	}
	public String getNgayLap() {
		return NgayLap;
	}
	public void setNgayLap(String ngayLap) {
		NgayLap = ngayLap;
	}
	public double getTongTien() {
		return TongTien;
	}
	public void setTongTien(double tongTien) {
		TongTien = tongTien;
	}
	
}
