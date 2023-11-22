package CafeTakeAway.Service.Admin;

import java.util.List;

import org.springframework.stereotype.Service;

import CafeTakeAway.Entity.NhanVien;
import CafeTakeAway.Entity.User;

@Service
public interface IUserService {
	public List<NhanVien> getAllUser();
	public NhanVien getNhanVienById(String id);
	public void addNhanVien(NhanVien nv);
	public List<User> getAllAccount();
	public User getAccountByMaNV(String manv);
	public void updateAccount(User user);
	public void deleteAccount(String manv);
	public boolean addAccount(User user);
	public String getMaNV();
	public void updateNhanVien(NhanVien nv);
}
