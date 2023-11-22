package CafeTakeAway.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import CafeTakeAway.Entity.CT_PhieuNhap;
import CafeTakeAway.Entity.MapperCT_PhieuNhap;
import CafeTakeAway.Entity.MapperPhieuNhap;
import CafeTakeAway.Entity.PhieuNhap;

@Repository
public class NhapKhoDao {
	@Autowired
	JdbcTemplate _jdbcTemplate;
	
	public String getMaxId() {
		String sql = "select max(maPhieuNhap) from phieunhap";
		String id = _jdbcTemplate.queryForObject(sql, String.class);
		if (id == null) {
			id = "0";
		}
		return id;
	}
	
	public List<PhieuNhap> getAllPhieuNhap() {
		String sql = "select * from phieunhap";
		List<PhieuNhap> list = _jdbcTemplate.query(sql, new MapperPhieuNhap());
		return list;
	}
	
	public void addPhieuNhap(PhieuNhap pn) {
		String sql = "insert into phieunhap values(?, ?, ?, ?)";
		_jdbcTemplate.update(sql, pn.getMaPN(), pn.getMaNV(), pn.getMaNCC(), pn.getNgayNhap());
		return;
	}
	
	public void deletePhieuNhap(String maPN) {
		String sql = "delete from phieunhap where maPhieuNhap = ?";
		_jdbcTemplate.update(sql, maPN);
		return;
	}
	
	public List<CT_PhieuNhap> getAllCt_PN() {
		String sql = "select * from phieunhap";
		List<CT_PhieuNhap> list = _jdbcTemplate.query(sql, new MapperCT_PhieuNhap());
		return list;
	}
	
	public void addCT_PN(CT_PhieuNhap ct) {
		String sql = "insert into ct_phieunhap values(?, ?, ?, ?)";
		_jdbcTemplate.update(sql, ct.getMaPN(), ct.getMaNL(), ct.getSoLuong(), ct.getDonGia());
		return;
	}
	
	public List<CT_PhieuNhap> getCT_PNById(String maPN) {
		String sql = "select * from ct_phieunhap";
		List<CT_PhieuNhap> list = _jdbcTemplate.query(sql, new MapperCT_PhieuNhap());
		return list;
	}
	
	public void deleteItem(String maPN, String maNL) {
		String sql = "delete from ct_phieunhap where maPN = ? and maNL = ?";
		_jdbcTemplate.update(sql, maPN, maNL);
		return;
	}
}
