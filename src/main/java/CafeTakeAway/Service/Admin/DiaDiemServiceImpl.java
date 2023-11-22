package CafeTakeAway.Service.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import CafeTakeAway.Dao.DiaDiemDao;
import CafeTakeAway.Entity.DiaDiem;

@Service
public class DiaDiemServiceImpl implements IDiaDiemService {
	@Autowired
	DiaDiemDao diaDiemDao;
	
	public List<DiaDiem> getAllDiaDiem() {
		return diaDiemDao.getAllDiaDiem();
	}
	
	public boolean addDiaDiem(DiaDiem dd) {
		return diaDiemDao.addDiaDiem(dd);
	}

}
