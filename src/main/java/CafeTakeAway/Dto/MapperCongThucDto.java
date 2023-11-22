package CafeTakeAway.Dto;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperCongThucDto implements RowMapper<CongThucDto> {
	public CongThucDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		CongThucDto ct = new CongThucDto(rs.getInt("maSP"), rs.getString("tenSP"), rs.getString("congThuc"));
		return ct;
	}
}
