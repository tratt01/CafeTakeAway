package CafeTakeAway.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import CafeTakeAway.Entity.LoaiSanPham;
import CafeTakeAway.Entity.MapperLoaiSanPham;

@Repository
public class LoaiSanPhamDao {
	@Autowired
	JdbcTemplate _jdbcTemplate;
	
	public List<LoaiSanPham> GetDataLoaiSanPham() {
		List<LoaiSanPham> list = new ArrayList<LoaiSanPham>();
		String sql = "select * from loaisanpham";
		list = _jdbcTemplate.query(sql, new MapperLoaiSanPham());
		return list;
	}
	
	public List<LoaiSanPham> GetTenLoaiSanPhamByID(int id) {
		List<LoaiSanPham> list = new ArrayList<LoaiSanPham>();
		String sql = "select * from loaisanpham where MaLoai = (select MaLoai from sanpham where masp = " + id + " )";
		list = _jdbcTemplate.query(sql, new MapperLoaiSanPham());
		return list;
	}
	
	public LoaiSanPham GetLoaiSanPhamByID(int id) {
		String sql = "select * from loaisanpham where MaLoai = " + id;
		LoaiSanPham loaisp = _jdbcTemplate.queryForObject(sql, new MapperLoaiSanPham());
		return loaisp;
	}
	
	public int GetMaxMaLoai() {
		String sql = "select max(maLoai) from loaisanpham";
		return _jdbcTemplate.queryForObject(sql, int.class);
	}
	
	public void ThemLoaiSanPham(LoaiSanPham loaisp) {
		String sql = "INSERT INTO `loaisanpham`(`MaLoai`, `TenLoai`) VALUES ('" + loaisp.getMaLoai() + "','" + loaisp.getTenLoai() + "')";
		_jdbcTemplate.update(sql);
		return;
	}
	
	public void UpdateLoaiSanPham(LoaiSanPham loaisp) {
		String sql = "UPDATE `loaisanpham` SET `TenLoai`='" + loaisp.getTenLoai() + "' WHERE maLoai = " + loaisp.getMaLoai();
		_jdbcTemplate.update(sql);
		return;
	}
	
	public void DeleteLoaiSanPham(int maLoai) {
		String sql = "DELETE FROM `loaisanpham` WHERE maLoai = " + maLoai;
		_jdbcTemplate.update(sql);
		return;
	}
}
