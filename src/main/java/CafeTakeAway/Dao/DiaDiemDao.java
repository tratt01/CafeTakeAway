package CafeTakeAway.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import CafeTakeAway.Entity.DiaDiem;
import CafeTakeAway.Entity.MapperDiaDiem;

@Repository
public class DiaDiemDao {
	@Autowired
	JdbcTemplate _jdbcTemplate;
	
	public List<DiaDiem> getAllDiaDiem() {
		String sql = "select * from diadiem";
		List<DiaDiem> dd = _jdbcTemplate.query(sql, new MapperDiaDiem());
		return dd;
	}
	
	public boolean addDiaDiem(DiaDiem dd) {
		String sql = "insert into DiaDiem values(?, ?, ?, ?)";
		
		try {
			_jdbcTemplate.update(sql, dd.getMaDiaDiem(), dd.getMaNV(), dd.getDiaChi(), dd.getNgayThanhToan());
		} catch (Exception e) {
			return false;
		}
		return true;
	}
}
