package CafeTakeAway.Dto;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperSanPham_HoaDon implements RowMapper<SanPham_HoaDon> {

	public SanPham_HoaDon mapRow(ResultSet rs, int rowNum) throws SQLException {
		SanPham_HoaDon sp = new SanPham_HoaDon(rs.getString("anh"), rs.getString("tenSP"), rs.getInt("soLuong"), rs.getDouble("donGia"), rs.getDouble("donGiaSauKM"));
		return sp;
	}
	
}
