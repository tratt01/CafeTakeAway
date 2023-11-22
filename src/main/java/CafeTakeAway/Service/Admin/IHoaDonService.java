package CafeTakeAway.Service.Admin;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import CafeTakeAway.Dto.CartDto;
import CafeTakeAway.Dto.HoaDonDto;
import CafeTakeAway.Dto.SanPham_HoaDon;
import CafeTakeAway.Entity.HoaDon;
import CafeTakeAway.Entity.SanPham;

@Service
public interface IHoaDonService {
	public void createNewHoaDon(HttpSession session, HashMap<Integer, CartDto> cart);
	public List<HoaDon> getAllHoaDon();
	public List<SanPham_HoaDon> getSanPhamsfromHoaDon(int id);
	public List<HoaDonDto> getHoaDonfromDate(String maDiaDiem, Date startDate, Date endDate); 
	public List<HoaDonDto> getTongHoaDonfromDate( String maDiaDiem, Date sqlDate, Date sqlDate2);
	public void UpdateNgayThanhToan(String id, Date date);
}
