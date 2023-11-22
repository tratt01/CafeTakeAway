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

import CafeTakeAway.Entity.NguyenLieu;
import CafeTakeAway.Service.Admin.NguyeLieuServiceImpl;;

@Controller
public class IngredientController extends BaseClass {
	@Autowired
	NguyeLieuServiceImpl nguyenLieuService;
	
	@RequestMapping("/admin/ingredient")
	public ModelAndView Ingredient() {
		ModelAndView mv = new ModelAndView("admin/ingredient/ingredients");
		if (!Init()) {
			mv.setViewName("redirect: /CafeTakeAway/login");
		}
		mv.addObject("nl", nguyenLieuService.getAllNguyenLieu());
		return mv;
	}
	
	
	@RequestMapping("/admin/ingredient/add")
	public ModelAndView Add() {
		ModelAndView mv = new ModelAndView("admin/ingredient/add");
		if (!Init()) {
			mv.setViewName("redirect: /CafeTakeAway/login");
		}
		int maNL = nguyenLieuService.getMaxMaNL() + 1;
		NguyenLieu nl = new NguyenLieu();
		nl.setMaNL(String.valueOf(maNL));
		mv.addObject("nl", nl);
		return mv;
	}
	
	@RequestMapping(value = "/admin/ingredient/add", method = RequestMethod.POST)
	public String AddAction(@ModelAttribute("nl") NguyenLieu nl) {
		if (!Init()) {
			return "redirect: /CafeTakeAway/login";
		}
		int maNL = nguyenLieuService.getMaxMaNL() + 1;
		nl.setMaNL(String.valueOf(maNL));
		
		byte[] bytes = nl.getTenNL().getBytes(ISO_8859_1);
		String tenNL = new String(bytes, UTF_8);
		nl.setTenNL(tenNL);
		
		nguyenLieuService.addNguyenLieu(nl);
		
		return "redirect:/admin/ingredient";
	}

	@RequestMapping("/admin/ingredient/update/{id}")
	public ModelAndView Update(@PathVariable String id) {
		ModelAndView mv = new ModelAndView("admin/ingredient/update");
		if (!Init()) {
			mv.setViewName("redirect: /CafeTakeAway/login");
		}
		mv.addObject("nl", nguyenLieuService.getNguyenLieuByMaNL(id));
		return mv;
	}
	
	@RequestMapping(value = "/admin/ingredient/update/{id}", method = RequestMethod.POST)
	public String UpdateAction(@ModelAttribute("nl") NguyenLieu nl) {
		if (!Init()) {
			return "redirect: /CafeTakeAway/login";
		}
		byte[] bytes = nl.getTenNL().getBytes(ISO_8859_1);
		String tenNL = new String(bytes, UTF_8);
		nl.setTenNL(tenNL);
		
		nguyenLieuService.updateNguyenLieu(nl);
		return "redirect:/admin/ingredient";
	}
	
	@RequestMapping("/admin/ingredient/delete/{id}")
	public String Delete(@PathVariable String id) {
		if (!Init()) {
			return "redirect: /CafeTakeAway/login";
		}
		nguyenLieuService.deteleNguyenLieu(id);
		return "redirect:/admin/ingredient";
	}
}
