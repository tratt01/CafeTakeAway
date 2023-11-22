package CafeTakeAway.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperCT_PhieuXuat implements RowMapper<CT_PhieuXuat> {

	public CT_PhieuXuat mapRow(ResultSet rs, int rowNum) throws SQLException {
		CT_PhieuXuat ct = new CT_PhieuXuat(rs.getString("maPhieuXuat"), rs.getString("maNguyenLieu"), 
				rs.getString("soLuong"), rs.getString("donVi"), rs.getString("tenNguyenLieu"));
		return ct;
	}
	
	
	
}
