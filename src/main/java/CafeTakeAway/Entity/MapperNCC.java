package CafeTakeAway.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperNCC implements RowMapper<NhaCungCap> {

	public NhaCungCap mapRow(ResultSet rs, int rowNum) throws SQLException {
		NhaCungCap ncc = new NhaCungCap(rs.getString("maNCC"), rs.getString("tenNCC"), 
				rs.getString("email"), rs.getString("sdt"), rs.getString("diaChi"));
		return ncc;
	}
	
}
