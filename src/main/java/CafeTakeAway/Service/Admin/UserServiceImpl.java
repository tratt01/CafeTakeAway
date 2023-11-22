package CafeTakeAway.Service.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import CafeTakeAway.Dao.UserDao;
import CafeTakeAway.Entity.NhanVien;
import CafeTakeAway.Entity.User;

@Service
public class UserServiceImpl implements IUserService {
	@Autowired
	UserDao userDao;
	
	public List<NhanVien> getAllUser() {
		return userDao.getAllUser();
	}
	
	public NhanVien getNhanVienById(String id) {
		return userDao.getNhanVienById(id);
	}
	
	public void addNhanVien(NhanVien nv) {
		userDao.addNhanVien(nv);
		return;
	}
	
	public List<User> getAllAccount() {
		return userDao.getAllAccount();
	}
	
	public User getAccountByMaNV(String manv) {
		return userDao.getAccountByMaNV(manv);
	}
	
	public void updateAccount(User user) {
		userDao.updateAccount(user);
		return;
	}

	public void deleteAccount(String manv) {
		userDao.deleteAccount(manv);
		return;
	}

	public boolean addAccount(User user) {
		return userDao.addAccount(user);
	}
	
	public String getMaNV() {
		return userDao.getMaNV();
	}
	
	public void updateNhanVien(NhanVien nv) {
		userDao.updateNhanVien(nv);
	}

}
