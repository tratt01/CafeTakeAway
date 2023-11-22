package CafeTakeAway.Service.User;

import java.util.List;

import org.springframework.stereotype.Service;

import CafeTakeAway.Entity.LoaiSanPham;
import CafeTakeAway.Entity.SanPham;

@Service
public interface IHomeService {
	public List<SanPham> GetDataSanPhamKM();
	public List<SanPham> GetDataSanPhamMoiNhat();
	public List<LoaiSanPham> GetDataLoaiSanPham();
	
}
