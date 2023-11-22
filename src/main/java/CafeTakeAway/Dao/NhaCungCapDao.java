package CafeTakeAway.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import CafeTakeAway.Entity.MapperNCC;
import CafeTakeAway.Entity.NhaCungCap;

@Repository
public class NhaCungCapDao {
	@Autowired
	JdbcTemplate _jdbcTemplate;
	
	public List<NhaCungCap> getAllNCC() {
		String sql = "select * from nhacungcap";
		List<NhaCungCap> list = _jdbcTemplate.query(sql, new MapperNCC());
		return list;
	}
	
	public NhaCungCap getNCCById(String maNCC) {
		String sql = "select * from nhacungcap where maNCC = ?";
		NhaCungCap ncc = _jdbcTemplate.queryForObject(sql, new MapperNCC(), maNCC);
		return ncc;
	}
	
	public boolean addNhaCungCap(NhaCungCap ncc) {
		String sql = "insert into nhacungcap values(?, ?, ?, ?, ?)";
		try {
			_jdbcTemplate.update(sql, ncc.getMaNCC(), ncc.getTenNCC(), ncc.getEmail(), ncc.getSdt(), ncc.getDiaChi());
		} catch (Exception e) {
			return false;
		}
		return true;
	}
	
	public boolean updateNCC(NhaCungCap ncc) {
		String sql = "update nhacungcap set mancc = ?, tenncc = ?, email = ?, sdt = ?, diachi = ? where mancc = ?";
		
		try {
			_jdbcTemplate.update(sql, ncc.getMaNCC(), ncc.getTenNCC(), ncc.getEmail(), ncc.getSdt(), ncc.getDiaChi(), ncc.getMaNCC());
		} catch (Exception e) {
			return false;
		}
		return true;
	}
	
	public void deleteNCC(String maNCC) {
		String sql = "delete from nhacungcap where mancc = ?";
		_jdbcTemplate.update(sql, maNCC);
		return;
	}
}
