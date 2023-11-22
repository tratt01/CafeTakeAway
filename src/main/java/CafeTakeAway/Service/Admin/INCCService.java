package CafeTakeAway.Service.Admin;

import java.util.List;

import org.springframework.stereotype.Service;

import CafeTakeAway.Entity.NhaCungCap;

@Service
public interface INCCService {
	public List<NhaCungCap> getAllNCC();
	public NhaCungCap getNCCById(String maNCC);
	public boolean addNhaCungCap(NhaCungCap ncc);
	public boolean updateNCC(NhaCungCap ncc);
	public void deleteNCC(String maNCC);
}
