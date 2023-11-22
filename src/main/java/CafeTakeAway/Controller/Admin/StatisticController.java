package CafeTakeAway.Controller.Admin;

import java.time.LocalDate;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import CafeTakeAway.Dto.POST_HoaDon;
import CafeTakeAway.Service.Admin.HoaDonServiceImpl;

@Controller
public class StatisticController extends BaseClass {
	@Autowired
	HoaDonServiceImpl hoaDonService;
	
	@RequestMapping("/admin/statistics")
	public ModelAndView Statistic() {
		ModelAndView mv = new ModelAndView("admin/statistic/statistics");
		if (!Init()) {
			mv.setViewName("redirect: /CafeTakeAway/login");
		}
		java.util.Date date=new java.util.Date();
		java.sql.Date sqlDate=new java.sql.Date(date.getTime());
		
		LocalDate today = LocalDate.now();
		Date startDay = java.sql.Date.valueOf(today.withDayOfMonth(1));
				
		mv.addObject("startDay", startDay);
		mv.addObject("endDay", sqlDate);
		mv.addObject("total", 0);
		mv.addObject("hoadon", hoaDonService.getTongHoaDonfromDate("%", (java.sql.Date) startDay, sqlDate));
		mv.addObject("hd", new POST_HoaDon());
		return mv;
	}
	
	@RequestMapping(value = "/admin/statistic", method = RequestMethod.POST)
	public ModelAndView Statistic_Date(@ModelAttribute("hd") POST_HoaDon hd) {
		ModelAndView mv = new ModelAndView("admin/statistic/statistics");
		if (!Init()) {
			mv.setViewName("redirect: /CafeTakeAway/login");
		}
		mv.addObject("total", 0);
		mv.addObject("startDay", hd.getStartDay());
		mv.addObject("endDay", hd.getEndDay());
		if (hd.getMaDiaDiem() == "") {
			hd.setMaDiaDiem("%");
		}
		mv.addObject("hoadon", hoaDonService.getTongHoaDonfromDate(hd.getMaDiaDiem(), hd.getStartDay(), hd.getEndDay()));
		return mv;
	}
	
	@RequestMapping(value = "/admin/statistic/pay/{id}")
	public String Pay(@PathVariable String id) {
		if (!Init()) {
			return "redirect: /CafeTakeAway/login";
		}
		java.util.Date date=new java.util.Date();
		java.sql.Date sqlDate=new java.sql.Date(date.getTime());
		
		hoaDonService.UpdateNgayThanhToan(id, sqlDate);
		return "redirect:/admin/statistics";
	}
}
