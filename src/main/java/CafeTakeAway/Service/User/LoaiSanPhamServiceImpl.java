package CafeTakeAway.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import CafeTakeAway.Dao.LoaiSanPhamDao;
import CafeTakeAway.Dao.SanPhamDao;
import CafeTakeAway.Entity.LoaiSanPham;
import CafeTakeAway.Entity.SanPham;

@Service
public class LoaiSanPhamServiceImpl implements ILoaiSanPhamService {
	@Autowired
	SanPhamDao spdao;
	@Autowired
	LoaiSanPhamDao loaispdao;
	@Autowired
	LoaiSanPhamDao loaisanphamdao;
	
	public List<SanPham> GetAllDataSanPham() {
		return spdao.GetAllDataSanPham();
	}
	
	public List<SanPham> GetAllDataSanPham_Page(int start, int end) {
		return spdao.GetAllDataSanPham_Page(start, end);
	}
	
	public List<SanPham> GetDataSanPhamByLoaiSP(int id) {
		return spdao.GetDataSanPhamByLoaiSP(id);
	}

	public List<SanPham> GetDataSanPham_Page(int id, int start, int end) {
		return spdao.GetDataSanPham_Page(id, start, end);
	}

	public LoaiSanPham GetTenLoaiSanPhamByID(int id) {
		List<LoaiSanPham> list = loaispdao.GetTenLoaiSanPhamByID(id);
		return list.get(0);
	}
	
	public LoaiSanPham GetLoaiSanPhamByID(int id) {
		return loaisanphamdao.GetLoaiSanPhamByID(id);
	}
	
	public int GetMaxMaLoai() {
		return loaisanphamdao.GetMaxMaLoai();
	}
	
	public void ThemLoaiSanPham(LoaiSanPham loaisp) {
		loaisanphamdao.ThemLoaiSanPham(loaisp);
		return;
	}
	
	public void UpdateLoaiSanPham(LoaiSanPham loaisp) {
		loaisanphamdao.UpdateLoaiSanPham(loaisp);
		return;
	}
	
	public void DeleteLoaiSanPham(int maLoai) {
		loaisanphamdao.DeleteLoaiSanPham(maLoai);
	}
}
