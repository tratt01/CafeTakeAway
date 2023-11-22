package CafeTakeAway.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperNguyenLieu implements RowMapper<NguyenLieu> {

	public NguyenLieu mapRow(ResultSet rs, int rowNum) throws SQLException {
		NguyenLieu nl = new NguyenLieu(rs.getString("maNguyenLieu"), 
				rs.getString("tenNguyenLieu"), rs.getString("donVi"), rs.getInt("soLuong"));
		return nl;
	}
	
}
