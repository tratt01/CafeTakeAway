package CafeTakeAway.Service.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import CafeTakeAway.Dao.NhaCungCapDao;
import CafeTakeAway.Entity.NhaCungCap;

@Service
public class NCCServiceImpl implements INCCService {
	@Autowired
	NhaCungCapDao nccDao;
	public boolean addNhaCungCap(NhaCungCap ncc) {
		return nccDao.addNhaCungCap(ncc);
	}
	
	public NhaCungCap getNCCById(String maNCC) {
		return nccDao.getNCCById(maNCC);
	}
	
	public List<NhaCungCap> getAllNCC() {
		return nccDao.getAllNCC();
	}
	
	public boolean updateNCC(NhaCungCap ncc) {
		return nccDao.updateNCC(ncc);
	}
	
	public void deleteNCC(String maNCC) {
		nccDao.deleteNCC(maNCC);
		return;
	}
}
