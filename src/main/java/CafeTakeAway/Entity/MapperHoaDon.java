package CafeTakeAway.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperHoaDon implements RowMapper<HoaDon> {

	public HoaDon mapRow(ResultSet rs, int rowNum) throws SQLException {
		HoaDon hoadon = new HoaDon(rs.getString("maHoaDon"), rs.getString("maNV"), rs.getString("ngayLap"), rs.getDouble("tongTien"));
		return hoadon;
	}
	
}
