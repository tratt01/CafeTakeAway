package CafeTakeAway.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import CafeTakeAway.Dao.SanPhamDao;
import CafeTakeAway.Entity.SanPham;

@Service
public class ChiTietSPServiceImpl implements IChiTietSPService {
	@Autowired
	SanPhamDao spdao;
	
	public SanPham GetDataSanPhamById(int id) {
		List<SanPham> list = spdao.GetDataSanPhamById(id);
		return list.get(0);
	}
	
}
