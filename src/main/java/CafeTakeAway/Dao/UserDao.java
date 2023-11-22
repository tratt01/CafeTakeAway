package CafeTakeAway.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import CafeTakeAway.Entity.MapperNhanVien;
import CafeTakeAway.Entity.MapperUser;
import CafeTakeAway.Entity.NhanVien;
import CafeTakeAway.Entity.User;

@Repository
public class UserDao {
	@Autowired
	JdbcTemplate _jdbcTemplate;
	
	public User getUserByID(User user) {
		User result;
		String sql = "select * from taikhoan where username = ? and password = ?";
		try {
			result = _jdbcTemplate.queryForObject(sql, new MapperUser(), user.getUsername(), user.getPassword());
		} catch (Exception e) {
			result = null;
		}
	
		return result;
	}
	
	public List<User> getAllAccount() {
		List<User> list = new ArrayList<User>();
		String sql = "select * from taikhoan";
		list = _jdbcTemplate.query(sql, new MapperUser());
		return list;
	}
	
	public User getAccountByMaNV(String manv) {
		String sql = "select * from taikhoan where manv = ?";
		User user = _jdbcTemplate.queryForObject(sql, new MapperUser(), manv);
		return user;
	}
	
	
	public boolean addAccount(User user) {
		String sql = "insert into taikhoan values(?, ?, ?, ?)";
		
		try {
			_jdbcTemplate.update(sql, user.getMaNV(), user.getUsername(), user.getPassword(), user.getchucVu());
		} catch (Exception e) {
			return false;
		}
		return true;
	}
	
	public String getMaNV() {
		String manv = "";
		String sql = "select group_concat(manhanvien) from nhanvien left join taikhoan on nhanvien.MaNhanVien = taikhoan.manv where manv is null";
		try {
			manv = _jdbcTemplate.queryForObject(sql, String.class);} 
		catch (Exception e) {
			return "";
		}
		return manv;
	}
	
	public void updateAccount(User user) {
		String sql= "update taikhoan set username = ?, password = ? where manv = ?";
		_jdbcTemplate.update(sql, user.getUsername(), user.getPassword(), user.getMaNV());
		return;
	}
	
	public void deleteAccount(String manv) {
		String sql= "detele from taikhoan where manv = ?";
		_jdbcTemplate.update(sql, manv);
		return;
	}
	
	// =========== Nhân viên ===========
	
	public List<NhanVien> getAllUser() {
		List<NhanVien> list = new ArrayList<NhanVien>();
		String sql = "select nhanvien.*, diadiem.MaDiaDiem, ChucVu from nhanvien left join taikhoan on "
				+ "nhanvien.MaNhanVien = taikhoan.manv left join diadiem on nhanvien.MaNhanVien = diadiem.MaNV";
		
		list = _jdbcTemplate.query(sql, new MapperNhanVien());
		return list;
	}
	
	public NhanVien getNhanVienById(String id) {
		String sql = "select nhanvien.*, diadiem.MaDiaDiem, ChucVu from nhanvien left join taikhoan on " + 
				"nhanvien.MaNhanVien = taikhoan.manv left join diadiem on nhanvien.MaNhanVien = diadiem.MaNV where MaNhanVien = '" + id + "'";
		NhanVien nv = _jdbcTemplate.queryForObject(sql, new MapperNhanVien());
		return nv;
	}
	
	public void addNhanVien(NhanVien nv) {
		String sql = "insert into nhanvien values(?, ?, ?, ?, ?, ?, ?, ?, ?)";
		_jdbcTemplate.update(sql, nv.getMaNhanVien(), nv.getHo(), nv.getTen(), nv.getNgaySinh(), 
				nv.getDiaChi(), nv.getGioiTinh(), nv.getEmail(), nv.getSdt(), nv.getCmnd());
		return;
	}
	
	public void updateNhanVien(NhanVien nv) {
		String sql = "update nhanvien set diaChi = ?, email = ?, sdt = ? where manhanvien = ?";
		_jdbcTemplate.update(sql, nv.getDiaChi(), nv.getEmail(), nv.getSdt(), nv.getMaNhanVien());
	}
	
	
}
