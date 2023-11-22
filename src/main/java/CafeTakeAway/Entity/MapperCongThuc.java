package CafeTakeAway.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperCongThuc implements RowMapper<CongThuc> {

	public CongThuc mapRow(ResultSet rs, int rowNum) throws SQLException {
		CongThuc ct = new CongThuc(rs.getInt("maSanPham"), rs.getString("maNguyenLieu"), rs.getInt("soLuong"), rs.getString("donVi"));
		return ct;
	}
	
}
