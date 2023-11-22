package CafeTakeAway.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperCT_PhieuNhap implements RowMapper<CT_PhieuNhap>{

	public CT_PhieuNhap mapRow(ResultSet rs, int rowNum) throws SQLException {
			CT_PhieuNhap ct = new CT_PhieuNhap(rs.getString("maPN"), rs.getString("maNL"), 
					rs.getInt("soLuong"), rs.getFloat("donGia"));
		return ct;
	}
	
}
