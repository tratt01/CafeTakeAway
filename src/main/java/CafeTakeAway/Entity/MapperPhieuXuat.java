package CafeTakeAway.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperPhieuXuat implements RowMapper<PhieuXuat>{

	public PhieuXuat mapRow(ResultSet rs, int rowNum) throws SQLException {
		PhieuXuat px = new PhieuXuat(rs.getString("maPhieuXuat"), rs.getString("maNV"), 
				rs.getString("diaChi"), rs.getDate("ngayXuat"));
		return px;
	}
		
}
