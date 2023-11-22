package CafeTakeAway.Service.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import CafeTakeAway.Dao.NhapKhoDao;
import CafeTakeAway.Entity.CT_PhieuNhap;
import CafeTakeAway.Entity.PhieuNhap;

@Service
public class NhapKhoServiceImpl implements INhapKhoService {
	@Autowired
	NhapKhoDao nhapKhoDao;
	
	public String getMaxId() {
		return nhapKhoDao.getMaxId();
	}
	
	public List<PhieuNhap> getAllPhieuNhap() {
		return nhapKhoDao.getAllPhieuNhap();
	}
	
	public void addPhieuNhap(PhieuNhap pn) {
		nhapKhoDao.addPhieuNhap(pn);
		return;
	}
	
	public void deletePhieuNhap(String maPN) {
		nhapKhoDao.deletePhieuNhap(maPN);
		return;
	}
	
	public List<CT_PhieuNhap> getAllCt_PN() {
		return nhapKhoDao.getAllCt_PN();
	}
	
	public void addCT_PN(CT_PhieuNhap ct) {
		nhapKhoDao.addCT_PN(ct);
		return;
	}
	
	public List<CT_PhieuNhap> getCT_PNById(String maPN) {
		return nhapKhoDao.getCT_PNById(maPN);
	}
	
	public void deleteItem(String maPN, String maNL) {
		nhapKhoDao.deleteItem(maPN, maNL);
		return;
	}
}
