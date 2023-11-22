package CafeTakeAway.Service.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import CafeTakeAway.Dao.CongThucDao;
import CafeTakeAway.Dto.ChiTietCongThucDto;
import CafeTakeAway.Dto.CongThucDto;
import CafeTakeAway.Entity.CongThuc;

@Service
public class CongThucServiceImpl implements ICongThucService {
	@Autowired
	CongThucDao congThucDao;
	
	public void addCongThuc(CongThuc ct) {
		congThucDao.addCongThuc(ct);
		return;
	}
	
	public List<CongThucDto> getAllCongThuc() {
		return congThucDao.getAllCongThuc();
	}
	
	public List<ChiTietCongThucDto> getAllCongThucByMaSp(String masp) {
		return congThucDao.getAllCongThucByMaSp(masp);
	}
	
	public void deleteCongThucByMaNL(String id[]) {
		congThucDao.deleteCongThucByMaNL(id);
		return;
	}
}
