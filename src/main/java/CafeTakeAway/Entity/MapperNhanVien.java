package CafeTakeAway.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperNhanVien implements RowMapper<NhanVien> {
	public NhanVien mapRow(ResultSet rs, int rowNum) throws SQLException {
		NhanVien nv = new NhanVien(rs.getString("MaNhanVien"), rs.getString("Ho"), rs.getString("Ten"), rs.getString("NgaySinh"), rs.getString("DiaChi"), 
			rs.getString("GioiTinh"), rs.getString("Email"), rs.getString("Sdt"), rs.getString("CMND"), rs.getString("MaDiaDiem"), rs.getString("ChucVu"));
		return nv;
	}

}
