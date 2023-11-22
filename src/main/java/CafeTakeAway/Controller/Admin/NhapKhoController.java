package CafeTakeAway.Controller.Admin;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import CafeTakeAway.Entity.CT_PhieuNhap;
import CafeTakeAway.Entity.PhieuNhap;
import CafeTakeAway.Entity.User;
import CafeTakeAway.Service.Admin.NCCServiceImpl;
import CafeTakeAway.Service.Admin.NguyeLieuServiceImpl;
import CafeTakeAway.Service.Admin.NhapKhoServiceImpl;

@Controller
public class NhapKhoController extends BaseClass {
	@Autowired
	NhapKhoServiceImpl nhapKhoService;
	@Autowired
	NCCServiceImpl nCCService;
	@Autowired
	NguyeLieuServiceImpl nlService;
	
	@RequestMapping("/admin/import")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("admin/import/import");
		if (!Init()) {
			mv.setViewName("redirect: /CafeTakeAway/login");
		}
		mv.addObject("pn", nhapKhoService.getAllPhieuNhap());
		return mv;
	}
	
	
	@RequestMapping("/admin/import/add")
	public ModelAndView Add(HttpSession session) {
		ModelAndView mv = new ModelAndView("admin/import/add");
		if (!Init()) {
			mv.setViewName("redirect: /CafeTakeAway/login");
		}
		
		java.util.Date date = new java.util.Date();
		java.sql.Date ngayNhap = new java.sql.Date(date.getTime());
		User u = (User) session.getAttribute("userInfo");
		
		mv.addObject("pn", new PhieuNhap());
		mv.addObject("maPN", Integer.parseInt(nhapKhoService.getMaxId()) + 1);
		mv.addObject("maNV", u.getMaNV());
		mv.addObject("maNCC", nCCService.getAllNCC());
		mv.addObject("ngayNhap", ngayNhap);
		return mv;
	}
	
	@RequestMapping(value = "/admin/import/add", method = RequestMethod.POST)
	public String AddAction(@ModelAttribute("pn") PhieuNhap pn) {
		if (!Init()) {
			return "redirect: /CafeTakeAway/login";
		}

		nhapKhoService.addPhieuNhap(pn);
		return "redirect:/admin/import";
	}
	
	@RequestMapping("/admin/import/update/{id}")
	public ModelAndView update(@PathVariable String id) {
		ModelAndView mv = new ModelAndView("admin/import/update");
		if (!Init()) {
			mv.setViewName("redirect: /CafeTakeAway/login");
		}
		mv.addObject("id", id);
		mv.addObject("ct_pn", nhapKhoService.getCT_PNById(id));
		return mv;
	}
	
	@RequestMapping("/admin/import/addItem/{id}")
	public ModelAndView addItem(@PathVariable String id) {
		ModelAndView mv = new ModelAndView("admin/import/addItem");
		if (!Init()) {
			mv.setViewName("redirect: /CafeTakeAway/login");
		}
		mv.addObject("id", id);
		mv.addObject("nl", nlService.getAllNguyenLieu());
		mv.addObject("ct_pn", new CT_PhieuNhap());
		return mv;
	}
	
	@RequestMapping(value = "/admin/import/addItem", method = RequestMethod.POST)
	public String addItemAction(@ModelAttribute("ct_pn") CT_PhieuNhap ct) {
		if (!Init()) {
			return "redirect: /CafeTakeAway/login";
		}
		nhapKhoService.addCT_PN(ct);
		return "redirect:/admin/import";
	}
	
	@RequestMapping("/admin/import/delete/{id}")
	public String Delete(@PathVariable String id) {
		if (!Init()) {
			return "redirect: /CafeTakeAway/login";
		}
		nhapKhoService.deletePhieuNhap(id);
		return "redirect:/admin/import";
	}
	
	@RequestMapping("/admin/import/deleteItem/{maPN}-{maNL}")
	public String DeleteItem(@PathVariable String maPN, @PathVariable String maNL) {
		if (!Init()) {
			return "redirect: /CafeTakeAway/login";
		}
		nhapKhoService.deleteItem(maPN, maNL);
		return "redirect:/admin/import";
	}
}
