package CafeTakeAway.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import CafeTakeAway.Dto.SanPhamDto;
import CafeTakeAway.Entity.MapperSanPham;
import CafeTakeAway.Entity.SanPham;

@Repository
public class SanPhamDao {
	@Autowired
	JdbcTemplate _jdbcTemplate;

	public List<SanPham> GetDataSanPhamById(int id) {
		List<SanPham> list = new ArrayList<SanPham>();
		String sql = "select * from SanPham where MaSP = " + id;
		list = _jdbcTemplate.query(sql, new MapperSanPham());
		return list;
	}

	public List<SanPham> GetAllDataSanPham() {
		List<SanPham> list = new ArrayList<SanPham>();
		String sql = "select * from SanPham";
		list = _jdbcTemplate.query(sql, new MapperSanPham());
		return list;
	}

	public List<SanPham> GetDataSanPhamKM() {
		List<SanPham> list = new ArrayList<SanPham>();
		String sql = "select * from SanPham where KhuyenMai = true";
		list = _jdbcTemplate.query(sql, new MapperSanPham());
		return list;
	}

	public List<SanPham> GetDataSanPhamMoiNhat() {
		List<SanPham> list = new ArrayList<SanPham>();
		String sql = "select * from SanPham where MoiNhat = true order by MaSp desc";
		list = _jdbcTemplate.query(sql, new MapperSanPham());
		return list;
	}

	public List<SanPham> GetDataSanPhamByLoaiSP(int id) {
		List<SanPham> list = new ArrayList<SanPham>();
		String sql = "select * from SanPham where MaLoai = " + id;
		list = _jdbcTemplate.query(sql, new MapperSanPham());
		return list;
	}

	public List<SanPham> GetAllDataSanPham_Page(int start, int end) {
		List<SanPham> list = new ArrayList<SanPham>();
		String sql = "select * from SanPham " + " limit " + start + ", " + end;
		list = _jdbcTemplate.query(sql, new MapperSanPham());
		return list;
	}

	public List<SanPham> GetDataSanPham_Page(int id, int start, int end) {
		List<SanPham> list = new ArrayList<SanPham>();
		String sql = "select * from SanPham where MaLoai = " + id + " limit " + start + ", " + end;
		list = _jdbcTemplate.query(sql, new MapperSanPham());
		return list;
	}

	public SanPham FindSanPhamById(int id) {
		String sql = "select * from SanPham where MaSP = " + id;
		SanPham sp = _jdbcTemplate.queryForObject(sql, new MapperSanPham());
		return sp;
	}

	public void ChinhSuaSanPham(SanPhamDto sp, int id, String anh) {
		
		String sql = "UPDATE `sanpham` SET " + "`TenSP`='" + sp.getTenSP() + "',"
				+ "`DonGia`='" + sp.getDonGia() + "',"
				+ "`TinhTrang`='',"
				+ "`MieuTa`='" + sp.getMieuTa() + "',";
		if ( !anh.equals("")) {
			sql += "`Anh`='" + anh + "',";
		}
		sql += "`MaLoai`='" + sp.getMaLoai() + "' WHERE maSP = '" + id + "'";
		_jdbcTemplate.execute(sql);
		return;
	}
	
	public int GetMaxMaSP() {
		String sql = "select max(MaSP) from sanpham";
		return (int) _jdbcTemplate.queryForObject(sql, int.class);
	}
	
	public void ThemSanPham(SanPham sp) {
		String sql = "INSERT INTO `sanpham`(`MaSP`, `TenSP`, `DonGia`, `TinhTrang`, `MieuTa`, `Anh`, `KhuyenMai`, `MoiNhat`, `MaLoai`) VALUES "
				+ "('" + sp.getMaSP() + "','" + sp.getTenSP() + "','" + sp.getDonGia() + "','" + sp.getTinhTrang() + "',"
				+ "'" + sp.getMieuTa() + "','" + sp.getAnh() + "','" + "0" + "','" + "0" + "','" + sp.getMaLoai() + "')";
		_jdbcTemplate.update(sql);
		return;
		
	}
	
	public void XoaSanPham(int maSP) {
		String sql = "DELETE FROM `sanpham` WHERE maSp = " + maSP;
		_jdbcTemplate.update(sql);
		return;
	}
	
	public void ChinhSuaKhuyenMai(int maSP, String option, int giaSauKM) {
		String sql = "update sanpham set dongiasaukm = ?, khuyenmai = 1 where maSP = ?";
		if (option.equals("0")) {
			sql = "update sanpham set dongiasaukm = null, khuyenmai = 0 where maSP = ?";
			_jdbcTemplate.update(sql, maSP);
			return;
		}
		
		_jdbcTemplate.update(sql, giaSauKM, maSP);
		return;
	}
}
