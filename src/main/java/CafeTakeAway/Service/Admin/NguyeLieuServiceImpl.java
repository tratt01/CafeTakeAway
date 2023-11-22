package CafeTakeAway.Service.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import CafeTakeAway.Dao.NguyenLieuDao;
import CafeTakeAway.Entity.NguyenLieu;

@Service
public class NguyeLieuServiceImpl implements INguyenLieuService {
	@Autowired
	NguyenLieuDao nguyenLieuDao;

	public List<NguyenLieu> getAllNguyenLieu() {
		return nguyenLieuDao.getAllNguyenLieu();
	}
	
	public NguyenLieu getNguyenLieuByMaNL(String maNL) {
		return nguyenLieuDao.getNguyenLieuByMaNL(maNL);
	}
	
	public void addNguyenLieu(NguyenLieu nl) {
		nguyenLieuDao.addNguyenLieu(nl);
		return;
	}
	
	public int getMaxMaNL() {
		return nguyenLieuDao.getMaxMaNL();
	}
	
	public void updateNguyenLieu(NguyenLieu nl) {
		nguyenLieuDao.updateNguyenLieu(nl);
		return;
	}
	
	public void deteleNguyenLieu(String maNL) {
		nguyenLieuDao.deteleNguyenLieu(maNL);
		return;
	}
}
