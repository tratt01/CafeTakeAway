package CafeTakeAway.Controller.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import CafeTakeAway.Dao.SanPhamDao;

@Controller
public class DiscountsController extends BaseClass {
	@Autowired
	SanPhamDao spDao;
	
	@RequestMapping("/admin/discounts")
	public ModelAndView Discounts() {
		ModelAndView mv = new ModelAndView("admin/discount/discounts");
		if (!Init()) {
			mv.setViewName("redirect: /CafeTakeAway/login");
		}
		mv.addObject("sp", spDao.GetDataSanPhamKM());
		return mv;
	}
	
	@RequestMapping("/admin/discounts/add/{id}")
	public ModelAndView AddDiscount(@PathVariable int id) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/product/addDiscount");
		if (!Init()) {
			mv.setViewName("redirect: /CafeTakeAway/login");
		}
		mv.addObject("sp", spDao.FindSanPhamById(id));
		return mv;
	}
	
	@RequestMapping(value = "/admin/discounts/add/{id}", method = RequestMethod.POST) 
	public String addDiscountAction(@PathVariable int id, @RequestParam("option") String option, @RequestParam("giaKM") Integer giaKM) {
		if (!Init()) {
			return "redirect: /CafeTakeAway/login";
		}
		spDao.ChinhSuaKhuyenMai(id, option, giaKM);
		return "redirect: /CafeTakeAway/admin/discounts";
	}
	
	@RequestMapping(value = "/admin/discounts/delete/{id}", method = RequestMethod.GET)
	public String DeleteProduct(@PathVariable int id) {
		if (!Init()) {
			return "redirect: /CafeTakeAway/login";
		}
		spDao.ChinhSuaKhuyenMai(id, "0", 100);
		return "redirect:/admin/discounts";
	}
	
	
}
