package CafeTakeAway.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import CafeTakeAway.Dto.ChiTietCongThucDto;
import CafeTakeAway.Dto.CongThucDto;
import CafeTakeAway.Dto.MapperChiTietCongThucDto;
import CafeTakeAway.Dto.MapperCongThucDto;
import CafeTakeAway.Entity.CongThuc;

@Repository
public class CongThucDao {
	@Autowired
	JdbcTemplate _jdbcTemplate;
	
	public void addCongThuc(CongThuc ct) {
		String sql = "insert into ct_sanpham values(?, ?, ?, ?)";
		_jdbcTemplate.update(sql, ct.getMaSP(), ct.getMaNL(), ct.getSoLuong(), ct.getDonVi());
		return;
	}
	
	public List<CongThucDto> getAllCongThuc() {
		String sql = "select sanpham.MaSP, sanpham.tenSP, GROUP_CONCAT(tenNguyenLieu, \" \", ct_sanpham.soluong, \" \", ct_sanpham.donvi, \" \")congThuc from ct_sanpham join nguyenlieu on ct_sanpham.MaNguyenLieu = nguyenlieu.MaNguyenLieu join sanpham on sanpham.MaSP = ct_sanpham.MaSanPham";
		List<CongThucDto> list = _jdbcTemplate.query(sql, new MapperCongThucDto());
		return list;
	}
	
	public List<ChiTietCongThucDto> getAllCongThucByMaSp(String masp) {
		String sql = "select sanpham.MaSP, sanpham.tenSP, nguyenlieu.MaNguyenLieu, nguyenlieu.TenNguyenLieu, ct_sanpham.SoLuong, ct_sanpham.DonVi from ct_sanpham"
				+ " join nguyenlieu on ct_sanpham.MaNguyenLieu = nguyenlieu.MaNguyenLieu join sanpham on sanpham.MaSP = ct_sanpham.MaSanPham where maSP = ?";
		List<ChiTietCongThucDto> list = _jdbcTemplate.query(sql, new MapperChiTietCongThucDto(), masp);
		return list;
	}
	
	public void deleteCongThucByMaNL(String id[]) {
		String sql = "delete from ct_sanpham where masanpham = ? and manguyenlieu = ?";
		_jdbcTemplate.update(sql, id[0], id[1]);
		return;
	}
}
