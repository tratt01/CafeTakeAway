package CafeTakeAway.Controller.Admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import CafeTakeAway.Dto.POST_HoaDon;
import CafeTakeAway.Service.Admin.HoaDonServiceImpl;
import CafeTakeAway.Service.User.CartServiceImpl;

@Controller
public class OrderController extends BaseClass {
	@Autowired
	CartServiceImpl cartservice;
	@Autowired
	HoaDonServiceImpl hoaDonService;
	
	@RequestMapping("/admin/orders")
	public ModelAndView Order() {
		ModelAndView mv = new ModelAndView("admin/order/orders");
		if (!Init()) {
			mv.setViewName("redirect: /CafeTakeAway/login");
		}
		java.util.Date date=new java.util.Date();
		java.sql.Date sqlDate=new java.sql.Date(date.getTime());
		
		mv.addObject("startDay", sqlDate);
		mv.addObject("endDay", sqlDate);
		mv.addObject("hoadon", hoaDonService.getHoaDonfromDate("%", sqlDate, sqlDate));
		mv.addObject("hd", new POST_HoaDon());
		return mv;
	}
	
	@RequestMapping(value = "/admin/orders", method = RequestMethod.POST)
	public ModelAndView OrderSearch(@ModelAttribute("hd") POST_HoaDon hd) {
		ModelAndView mv = new ModelAndView("admin/order/orders");
		if (!Init()) {
			mv.setViewName("redirect: /CafeTakeAway/login");
		}
		
		mv.addObject("hoadon", hoaDonService.getHoaDonfromDate(hd.getMaDiaDiem(), hd.getStartDay(), hd.getEndDay()));
		return mv;
	}
	
	@RequestMapping("/admin/order/orderDetail/{id}")
	public ModelAndView OrderDetail(HttpServletRequest request, HttpSession session, @PathVariable int id) {
		ModelAndView mv = new ModelAndView("admin/order/orderDetail");
		if (!Init()) {
			mv.setViewName("redirect: /CafeTakeAway/login");
		}
		
		mv.addObject("total", 0);
		mv.addObject("sanpham", hoaDonService.getSanPhamsfromHoaDon(id));
		return mv;
	}
	
	
}
