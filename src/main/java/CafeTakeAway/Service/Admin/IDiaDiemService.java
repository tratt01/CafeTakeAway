package CafeTakeAway.Service.Admin;

import java.util.List;

import org.springframework.stereotype.Service;

import CafeTakeAway.Entity.DiaDiem;

@Service
public interface IDiaDiemService {
	public List<DiaDiem> getAllDiaDiem();
	public boolean addDiaDiem(DiaDiem dd);
}
