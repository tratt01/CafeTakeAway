package CafeTakeAway.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import CafeTakeAway.Entity.MapperNguyenLieu;
import CafeTakeAway.Entity.NguyenLieu;

@Repository
public class NguyenLieuDao {
	@Autowired
	JdbcTemplate _jdbcTemplate;
	
	public List<NguyenLieu> getAllNguyenLieu() {
		List<NguyenLieu> list = new ArrayList<NguyenLieu>();
		String sql = "select * from nguyenlieu";
		list = _jdbcTemplate.query(sql, new MapperNguyenLieu());
		return list;
	}
	
	public NguyenLieu getNguyenLieuByMaNL(String maNL) {
		String sql = "select * from nguyenlieu where manguyenlieu = ?";
		NguyenLieu nl = _jdbcTemplate.queryForObject(sql, new MapperNguyenLieu(), maNL);
		return nl;
	}
	
	public void addNguyenLieu(NguyenLieu nl) {
		String sql = "insert into nguyenlieu values(?, ?, ?, ?)";
		_jdbcTemplate.update(sql, nl.getMaNL(), nl.getTenNL(), nl.getDonVi(), nl.getSoLuong());
		return;
	}
	
	public int getMaxMaNL() {
		String sql = "select max(maNguyenLieu) from nguyenlieu";
		if (_jdbcTemplate.queryForObject(sql, int.class) == null) 
			return 0;
		return _jdbcTemplate.queryForObject(sql, int.class);
	}
	
	public void updateNguyenLieu(NguyenLieu nl) {
		String sql = "update nguyenlieu set tenNguyenLieu = ?, soluong = ?, donvi = ? where maNguyenLieu = ?";
		_jdbcTemplate.update(sql, nl.getTenNL(), nl.getSoLuong(), nl.getDonVi(), nl.getMaNL());
		return;
	}
	
	public void deteleNguyenLieu(String maNL) {
		String sql = "delete from nguyenlieu where maNguyenLieu = ?";
		_jdbcTemplate.update(sql, maNL);
		return;
	}
}
