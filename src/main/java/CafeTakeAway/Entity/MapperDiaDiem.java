package CafeTakeAway.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperDiaDiem implements RowMapper<DiaDiem> {

	public DiaDiem mapRow(ResultSet rs, int rowNum) throws SQLException {
		DiaDiem dd = new DiaDiem(rs.getString("maDiaDiem"), rs.getString("maNV"), 
				rs.getString("diaChi"), rs.getDate("ngayThanhToan"));
		return dd;
	}
	
}
