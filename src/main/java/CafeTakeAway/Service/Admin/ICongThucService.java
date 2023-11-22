package CafeTakeAway.Service.Admin;

import java.util.List;

import org.springframework.stereotype.Service;

import CafeTakeAway.Dto.ChiTietCongThucDto;
import CafeTakeAway.Dto.CongThucDto;
import CafeTakeAway.Entity.CongThuc;

@Service
public interface ICongThucService {
	public void addCongThuc(CongThuc ct);
	public List<CongThucDto> getAllCongThuc();
	public List<ChiTietCongThucDto> getAllCongThucByMaSp(String masp);
	public void deleteCongThucByMaNL(String id[]);
}
