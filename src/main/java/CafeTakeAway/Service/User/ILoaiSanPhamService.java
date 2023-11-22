package CafeTakeAway.Service.User;

import java.util.List;

import org.springframework.stereotype.Service;

import CafeTakeAway.Entity.LoaiSanPham;
import CafeTakeAway.Entity.SanPham;

@Service
public interface ILoaiSanPhamService {
	
	public List<SanPham> GetAllDataSanPham();
	
	public List<SanPham> GetAllDataSanPham_Page(int start, int end);
	
	public List<SanPham> GetDataSanPhamByLoaiSP(int id);
	
	public List<SanPham> GetDataSanPham_Page(int id, int start, int end);
	
	public LoaiSanPham GetLoaiSanPhamByID(int id);
	
	public int GetMaxMaLoai();
	
	public void ThemLoaiSanPham(LoaiSanPham loaisp);
	
	public void UpdateLoaiSanPham(LoaiSanPham loaisp);
	
	public void DeleteLoaiSanPham(int maLoai);
}
