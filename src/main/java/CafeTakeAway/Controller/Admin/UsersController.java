package CafeTakeAway.Controller.Admin;

import static java.nio.charset.StandardCharsets.ISO_8859_1;
import static java.nio.charset.StandardCharsets.UTF_8;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import CafeTakeAway.Entity.NhanVien;
import CafeTakeAway.Service.Admin.UserServiceImpl;

@Controller
public class UsersController extends BaseClass {
	@Autowired
	UserServiceImpl userService;
	
	@RequestMapping("/admin/users")
	public ModelAndView Users() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/user/users");
		if (!Init()) {
			mv.setViewName("redirect: /CafeTakeAway/login");
		}
		mv.addObject("users", userService.getAllUser());
		return mv;
	}
	

	@RequestMapping(value = "/admin/user/addUser", method = RequestMethod.GET)
	public ModelAndView AddUser() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/user/addUser");
		if (!Init()) {
			mv.setViewName("redirect: /CafeTakeAway/login");
		}
		mv.addObject("nv", new NhanVien());
		return mv;
	}
	
	@RequestMapping(value = "/admin/user/addUser", method = RequestMethod.POST)
	public String AddUserAction(@ModelAttribute("nhanvien") NhanVien nv) {
		if (!Init()) {
			return "redirect: /CafeTakeAway/login";
		}
		byte[] bytes = nv.getHo().getBytes(ISO_8859_1);
		String ho = new String(bytes, UTF_8);
		nv.setHo(ho);
		
		bytes = nv.getTen().getBytes(ISO_8859_1);
		String ten = new String(bytes, UTF_8);
		nv.setTen(ten);
		
		bytes = nv.getDiaChi().getBytes(ISO_8859_1);
		String diaChi = new String(bytes, UTF_8);
		nv.setDiaChi(diaChi);
		
		bytes = nv.getGioiTinh().getBytes(ISO_8859_1);
		String gioiTinh = new String(bytes, UTF_8);
		nv.setGioiTinh(gioiTinh);
		
		userService.addNhanVien(nv);
		return "redirect:/admin/users";
	}
	
	@RequestMapping("/admin/user/update/{id}")
	public ModelAndView UpdateUser(@PathVariable String id) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/user/update");
		if (!Init()) {
			mv.setViewName("redirect: /CafeTakeAway/login");
		}
		mv.addObject("user", userService.getNhanVienById(id));
		return mv;
	}
	
	@RequestMapping(value = "/admin/user/update/{id}", method = RequestMethod.POST)
	public String UpdateAction(@PathVariable String id, @ModelAttribute("user") NhanVien nv) {
		if (!Init()) {
			return "redirect: /CafeTakeAway/login";
		}
		byte[] bytes = nv.getDiaChi().getBytes(ISO_8859_1);
		String diaChi = new String(bytes, UTF_8);
		nv.setDiaChi(diaChi);
		nv.setMaNhanVien(id);
		userService.updateNhanVien(nv);;
		return "redirect:/admin/users";
	}
}
