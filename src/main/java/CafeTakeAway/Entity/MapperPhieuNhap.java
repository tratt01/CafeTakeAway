package CafeTakeAway.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperPhieuNhap implements RowMapper<PhieuNhap> {

	public PhieuNhap mapRow(ResultSet rs, int rowNum) throws SQLException {
		PhieuNhap pn = new PhieuNhap(rs.getString("maPhieuNhap"), 
				rs.getString("maNV"), rs.getString("maNCC"), rs.getDate("ngayNhap"));
		
		return pn;
	}
	
}
