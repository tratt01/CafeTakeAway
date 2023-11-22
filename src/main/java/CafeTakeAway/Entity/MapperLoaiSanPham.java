package CafeTakeAway.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperLoaiSanPham implements RowMapper<LoaiSanPham> {

	public LoaiSanPham mapRow(ResultSet rs, int rowNum) throws SQLException {
		LoaiSanPham loaisp = new LoaiSanPham(rs.getInt("MaLoai"), rs.getString("TenLoai"));
		return loaisp;
	}
	
	
}
