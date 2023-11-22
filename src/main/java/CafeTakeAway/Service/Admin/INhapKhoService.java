package CafeTakeAway.Service.Admin;

import java.util.List;

import org.springframework.stereotype.Service;

import CafeTakeAway.Entity.CT_PhieuNhap;
import CafeTakeAway.Entity.PhieuNhap;

@Service
public interface INhapKhoService {
	public String getMaxId();
	public List<PhieuNhap> getAllPhieuNhap();
	public void addPhieuNhap(PhieuNhap pn);
	public void deletePhieuNhap(String maPN);
	public List<CT_PhieuNhap> getAllCt_PN();
	public void addCT_PN(CT_PhieuNhap ct);
	public List<CT_PhieuNhap> getCT_PNById(String maPN);
	public void deleteItem(String maPN, String maNL);
}
