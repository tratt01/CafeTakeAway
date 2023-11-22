package CafeTakeAway.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperSanPham implements RowMapper<SanPham> {

	public SanPham mapRow(ResultSet rs, int rowNum) throws SQLException {
		SanPham sp = new SanPham(rs.getString("MaSP"), rs.getString("TenSP"), rs.getFloat("DonGia"),
				rs.getFloat("DonGiaSauKM"), rs.getString("TinhTrang"), rs.getString("MieuTa"), rs.getString("Anh"),
				rs.getBoolean("KhuyenMai"), rs.getBoolean("MoiNhat"), rs.getString("MaLoai"));
		return sp;
	}

}
