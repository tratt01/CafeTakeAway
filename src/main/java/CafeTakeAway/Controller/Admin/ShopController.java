package CafeTakeAway.Controller.Admin;

import static java.nio.charset.StandardCharsets.ISO_8859_1;
import static java.nio.charset.StandardCharsets.UTF_8;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import CafeTakeAway.Entity.DiaDiem;
import CafeTakeAway.Service.Admin.DiaDiemServiceImpl;

@Controller
public class ShopController extends BaseClass {
	@Autowired
	DiaDiemServiceImpl diaDiemService;
	String status;
	
	@RequestMapping("/admin/shops")
	public ModelAndView Shops() {
		ModelAndView mv = new ModelAndView("admin/shop/shops");
		if (!Init()) {
			mv.setViewName("redirect: /CafeTakeAway/login");
		}
		mv.addObject("diaDiem", diaDiemService.getAllDiaDiem());
		return mv;
	}
	
	@RequestMapping("/admin/shop/add")
	public ModelAndView addShop() {
		ModelAndView mv = new ModelAndView("admin/shop/add");
//		if (!Init()) {
//			mv.setViewName("redirect: /CafeTakeAway/login");
//		}
		mv.addObject("status", status);
		mv.addObject("diaDiem", new DiaDiem());
		return mv;
	}
	
	
	@RequestMapping(value = "/admin/shop/add", method = RequestMethod.POST)
	public String addAction(@ModelAttribute("diaDiem") DiaDiem diaDiem) {
		
		java.util.Date date=new java.util.Date();
		java.sql.Date today=new java.sql.Date(date.getTime());
		diaDiem.setNgayThanhToan(today);
		
		byte[] bytes = diaDiem.getDiaChi().getBytes(ISO_8859_1);
		String diaChi = new String(bytes, UTF_8);
		diaDiem.setDiaChi(diaChi);
		
		
		status = "Thêm thất bại hoặc trùng Mã Đại lý";
		if (diaDiemService.addDiaDiem(diaDiem)) {
			status = "Thêm Đại lý";
			return "redirect:/admin/shops";
		}
		return "redirect:/admin/shop/add";
	}
	
}
