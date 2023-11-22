package CafeTakeAway.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import CafeTakeAway.Dao.LoaiSanPhamDao;
import CafeTakeAway.Dao.SanPhamDao;
import CafeTakeAway.Entity.LoaiSanPham;
import CafeTakeAway.Entity.SanPham;

@Service
public class HomeServiceImpl implements IHomeService {
	@Autowired
	private SanPhamDao sanphamdao;
	@Autowired
	private LoaiSanPhamDao loaisanphamdao;
	
	public List<SanPham> GetDataSanPhamKM() {
		return sanphamdao.GetDataSanPhamKM();
	}
	
	public List<SanPham> GetDataSanPhamMoiNhat() {
		return sanphamdao.GetDataSanPhamMoiNhat();
	}
	public List<LoaiSanPham> GetDataLoaiSanPham() {
		return loaisanphamdao.GetDataLoaiSanPham();
	}
	
	

}
