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

import CafeTakeAway.Entity.User;
import CafeTakeAway.Service.Admin.UserServiceImpl;

@Controller
public class AccountController extends BaseClass {
	@Autowired
	UserServiceImpl userService;
	
	String status = "Thêm Tài khoản";
	
	@RequestMapping("/admin/accounts")
	public ModelAndView Users() {
		ModelAndView mv = new ModelAndView("admin/account/accounts");
		if (!Init()) {
			mv.setViewName("redirect: /CafeTakeAway/login");
		}
		mv.addObject("account", userService.getAllAccount());
		
		return mv;
	}
	
	@RequestMapping("/admin/account/add")
	public ModelAndView Add() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("account", new User());
		mv.setViewName("admin/account/add");
		if (!Init()) {
			mv.setViewName("redirect: /CafeTakeAway/login");
		}
		if (userService.getMaNV() == null) {
			status = "Hãy thêm thông tin Quản lý trước khi thêm tài khoản";	
		}
		else {
			mv.addObject("manv", userService.getMaNV().split(","));
		}
		mv.addObject("status", status);
		return mv;
		
		
	}
	
	@RequestMapping(value = "/admin/account/add", method = RequestMethod.POST)
	public String AddAction(@ModelAttribute("account") User user) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/admin/account/accounts");
		if (!Init()) {
			mv.setViewName("redirect: /CafeTakeAway/login");
		}
		byte[] bytes = user.getchucVu().getBytes(ISO_8859_1);
		String chucVu = new String(bytes, UTF_8);
		user.setchucVu(chucVu);
		
		if (!userService.addAccount(user)) {
			status = "Thêm thất bại, trùng username hoặc không có mã nhân viên";
			return "redirect:/admin/account/add";
		}
		
		
		mv.addObject("status", status);
		return "redirect:/admin/accounts";
	}
	
	@RequestMapping("/admin/account/update/{manv}")
	public ModelAndView Update(@PathVariable String manv) {
		ModelAndView mv = new ModelAndView("admin/account/update");
		if (!Init()) {
			mv.setViewName("redirect: /CafeTakeAway/login");
		}
		mv.addObject("account", userService.getAccountByMaNV(manv));
		return mv;
	}
	
	@RequestMapping(value = "/admin/account/update/{manv}", method = RequestMethod.POST)
	public String UpdateAction(@ModelAttribute("account") User user) {
		ModelAndView mv = new ModelAndView("/admin/account/accounts");
		if (!Init()) {
			mv.setViewName("redirect: /CafeTakeAway/login");
		}
		userService.updateAccount(user);
		return "redirect:/admin/accounts";
	}
	
	@RequestMapping("/admin/account/delete/{manv}")
	public String DeleteAction(@PathVariable String manv) {
		ModelAndView mv = new ModelAndView("/admin/account/accounts");
		if (!Init()) {
			mv.setViewName("redirect: /CafeTakeAway/login");
		}
		userService.deleteAccount(manv);
		return "redirect:/admin/accounts";
	}
}
