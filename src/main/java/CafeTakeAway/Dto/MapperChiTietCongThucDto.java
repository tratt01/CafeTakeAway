package CafeTakeAway.Dto;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperChiTietCongThucDto implements RowMapper<ChiTietCongThucDto> {
	

	public ChiTietCongThucDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		ChiTietCongThucDto ct = new ChiTietCongThucDto(rs.getInt("maSP"), rs.getString("tenSP"),
				rs.getString("maNguyenLieu"), rs.getString("tenNguyenLieu"), rs.getInt("soLuong"), rs.getString("donVi"));
		return ct;
	}
	
}
