package CafeTakeAway.Service.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import CafeTakeAway.Dao.XuatKhoDao;
import CafeTakeAway.Entity.CT_PhieuXuat;
import CafeTakeAway.Entity.PhieuXuat;

@Service
public class XuatKhoServiceImpl implements IXuatKhoService {
	@Autowired
	XuatKhoDao xuatKhoDao;
	public String getMaxId() {
		return xuatKhoDao.getMaxId();
	}

	public List<PhieuXuat> getAllPhieuXuat() {
		return xuatKhoDao.getAllPhieuXuat();
	}

	public void addPhieuXuat(PhieuXuat px) {
		xuatKhoDao.addPhieuXuat(px);
		return;
	}

	public void deletePhieuXuat(String maPX) {
		xuatKhoDao.deletePhieuXuat(maPX);
		return;
	}

	public List<CT_PhieuXuat> getAllCt_PX() {
		xuatKhoDao.getAllCt_PX();
		return null;
	}

	public void addCT_PX(CT_PhieuXuat ct) {
		xuatKhoDao.addCT_PX(ct);
		return;
	}

	public List<CT_PhieuXuat> getCT_PXById(String maPX) {
		return xuatKhoDao.getCT_PXById(maPX);
	}

	public void deleteItem(String maPX, String maNL) {
		xuatKhoDao.deleteItem(maPX, maNL);
		return;
	}
	
}
