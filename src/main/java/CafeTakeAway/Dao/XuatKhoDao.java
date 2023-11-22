package CafeTakeAway.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import CafeTakeAway.Entity.CT_PhieuXuat;
import CafeTakeAway.Entity.MapperCT_PhieuXuat;
import CafeTakeAway.Entity.MapperPhieuXuat;
import CafeTakeAway.Entity.PhieuXuat;

@Repository
public class XuatKhoDao {
	@Autowired
	JdbcTemplate _jdbcTemplate;
	
	public String getMaxId() {
		String sql = "select max(maPhieuXuat) from phieuXuat";
		String id = _jdbcTemplate.queryForObject(sql, String.class);
		if (id == null) {
			id = "0";
		}
		return id;
	}
	
	public List<PhieuXuat> getAllPhieuXuat() {
		String sql = "select MaPhieuXuat, phieuxuat.MaNV, NgayXuat, diaChi from (select manv, diadiem.diachi from diadiem JOIN nhanvien on diadiem.MaNV = nhanvien.MaNhanVien)DD, phieuxuat where phieuxuat.MaNV = DD.manv";
		List<PhieuXuat> list = _jdbcTemplate.query(sql, new MapperPhieuXuat());
		return list;
	}
	
	public void addPhieuXuat(PhieuXuat px) {
		String sql = "insert into phieuxuat values(?, ?, ?)";
		_jdbcTemplate.update(sql, px.getMaPX(), px.getMaNV(), px.getNgayXuat());
		return;
	}
	
	public void deletePhieuXuat(String maPX) {
		String sql = "delete from phieuxuat where maPhieuXuat = ?";
		_jdbcTemplate.update(sql, maPX);
		return;
	}
	
	public List<CT_PhieuXuat> getAllCt_PX() {
		String sql = "SELECT ct_phieuxuat.*, tenNguyenLieu from  ct_phieuxuat join nguyenlieu on ct_phieuxuat.MaNguyenLieu = nguyenlieu.MaNguyenLieu";
		List<CT_PhieuXuat> list = _jdbcTemplate.query(sql, new MapperCT_PhieuXuat());
		return list;
	}
	
	public void addCT_PX(CT_PhieuXuat ct) {
		String sql = "insert into ct_phieuxuat values(?, ?, ?, ?)";
		_jdbcTemplate.update(sql, ct.getMaPX(), ct.getMaNL(), ct.getSoLuong(), ct.getDonVi());
		return;
	}
	
	public List<CT_PhieuXuat> getCT_PXById(String maPX) {
		String sql = "SELECT ct_phieuxuat.*, tenNguyenLieu from  ct_phieuxuat join nguyenlieu on ct_phieuxuat.MaNguyenLieu = nguyenlieu.MaNguyenLieu where maPhieuXuat = ?";
		List<CT_PhieuXuat> list = _jdbcTemplate.query(sql, new MapperCT_PhieuXuat(), maPX);
		return list;
	}
	
	public void deleteItem(String maPX, String maNL) {
		String sql = "delete from ct_phieuxuat where maPhieuXuat = ? and maNguyenLieu = ?";
		_jdbcTemplate.update(sql, maPX, maNL);
		return;
	}
}
