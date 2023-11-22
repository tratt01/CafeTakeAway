package CafeTakeAway.Dto;

public class CongThucDto {
	public int maSP;
	public String tenSP;
	public String congThuc;
	
	public CongThucDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	public CongThucDto(int maSP, String tenSP, String congThuc) {
		super();
		this.maSP = maSP;
		this.tenSP = tenSP;
		this.congThuc = congThuc;
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

	public String getCongThuc() {
		return congThuc;
	}

	public void setCongThuc(String congThuc) {
		this.congThuc = congThuc;
	}
	
}
