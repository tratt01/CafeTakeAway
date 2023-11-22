package CafeTakeAway.Service.Admin;

import java.util.List;

import org.springframework.stereotype.Service;

import CafeTakeAway.Entity.CT_PhieuXuat;
import CafeTakeAway.Entity.PhieuXuat;

@Service
public interface IXuatKhoService {
	public String getMaxId();
	public List<PhieuXuat> getAllPhieuXuat();
	public void addPhieuXuat(PhieuXuat pn);
	public void deletePhieuXuat(String maPX);
	public List<CT_PhieuXuat> getAllCt_PX();
	public void addCT_PX(CT_PhieuXuat ct);
	public void deleteItem(String maPX, String maNL);
	public List<CT_PhieuXuat> getCT_PXById(String maPX);
	
}
