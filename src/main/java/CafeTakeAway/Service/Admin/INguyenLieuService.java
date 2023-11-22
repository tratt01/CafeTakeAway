package CafeTakeAway.Service.Admin;

import java.util.List;

import org.springframework.stereotype.Service;

import CafeTakeAway.Entity.NguyenLieu;

@Service
public interface INguyenLieuService {
	public List<NguyenLieu> getAllNguyenLieu();
	public NguyenLieu getNguyenLieuByMaNL(String maNL);
	public void addNguyenLieu(NguyenLieu nl);
	public int getMaxMaNL();
	public void updateNguyenLieu(NguyenLieu nl);
	public void deteleNguyenLieu(String maNL);
}
