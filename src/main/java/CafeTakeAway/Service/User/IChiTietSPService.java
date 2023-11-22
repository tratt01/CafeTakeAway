package CafeTakeAway.Service.User;


import org.springframework.stereotype.Service;

import CafeTakeAway.Entity.SanPham;

@Service
public interface IChiTietSPService {
	public SanPham GetDataSanPhamById(int id);
}
