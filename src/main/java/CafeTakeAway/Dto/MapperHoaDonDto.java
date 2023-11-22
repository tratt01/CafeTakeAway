package CafeTakeAway.Dto;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperHoaDonDto implements RowMapper<HoaDonDto> {
	public HoaDonDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		HoaDonDto hoadon = new HoaDonDto(rs.getString("maDiaDiem"), rs.getString("diaChi"), rs.getInt("maHoaDon"), 
				rs.getString("maNV"), rs.getString("ngayLap"), rs.getDouble("tongTien"));
		return hoadon;
	}
	
}
