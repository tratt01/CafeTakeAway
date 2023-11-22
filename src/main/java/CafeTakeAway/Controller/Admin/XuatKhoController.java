package CafeTakeAway.Controller.Admin;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import CafeTakeAway.Entity.CT_PhieuXuat;
import CafeTakeAway.Entity.PhieuXuat;
import CafeTakeAway.Entity.User;
import CafeTakeAway.Service.Admin.NCCServiceImpl;
import CafeTakeAway.Service.Admin.NguyeLieuServiceImpl;
import CafeTakeAway.Service.Admin.XuatKhoServiceImpl;

@Controller
public class XuatKhoController extends BaseClass{
	@Autowired
	XuatKhoServiceImpl xuatKhoService;
	@Autowired
	NCCServiceImpl nCCService;
	@Autowired
	NguyeLieuServiceImpl nlService;
	
	@RequestMapping("/admin/export")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("admin/export/export");
		if (!Init()) {
			mv.setViewName("redirect: /CafeTakeAway/login");
		}
		mv.addObject("px", xuatKhoService.getAllPhieuXuat());
		return mv;
	}
	
	
	@RequestMapping("/admin/export/add")
	public ModelAndView Add(HttpSession session) {
		ModelAndView mv = new ModelAndView("admin/export/add");
		if (!Init()) {
			mv.setViewName("redirect: /CafeTakeAway/login");
		}
		
		java.util.Date date = new java.util.Date();
		java.sql.Date ngayXuat = new java.sql.Date(date.getTime());
		User u = (User) session.getAttribute("userInfo");
		
		mv.addObject("px", new PhieuXuat());
		mv.addObject("maPX", Integer.parseInt(xuatKhoService.getMaxId()) + 1);
		mv.addObject("maNV", u.getMaNV());
		mv.addObject("ngayXuat", ngayXuat);
		return mv;
	}
	
	@RequestMapping(value = "/admin/export/add", method = RequestMethod.POST)
	public String AddAction(@ModelAttribute("PX") PhieuXuat PX) {
		if (!Init()) {
			return "redirect: /CafeTakeAway/login";
		}

		xuatKhoService.addPhieuXuat(PX);
		return "redirect:/admin/export";
	}
	
	@RequestMapping("/admin/export/update/{id}")
	public ModelAndView update(@PathVariable String id) {
		ModelAndView mv = new ModelAndView("admin/export/update");
		if (!Init()) {
			mv.setViewName("redirect: /CafeTakeAway/login");
		}
		mv.addObject("id", id);
		mv.addObject("ct_px", xuatKhoService.getCT_PXById(id));
		return mv;
	}
	
	@RequestMapping("/admin/export/addItem/{id}")
	public ModelAndView addItem(@PathVariable String id) {
		ModelAndView mv = new ModelAndView("admin/export/addItem");
		if (!Init()) {
			mv.setViewName("redirect: /CafeTakeAway/login");
		}
		mv.addObject("id", id);
		mv.addObject("nl", nlService.getAllNguyenLieu());
		mv.addObject("ct_px", new CT_PhieuXuat());
		return mv;
	}
	
	@RequestMapping(value = "/admin/export/addItem", method = RequestMethod.POST)
	public String addItemAction(@ModelAttribute("ct_px") CT_PhieuXuat ct) {
		if (!Init()) {
			return "redirect: /CafeTakeAway/login";
		}
		xuatKhoService.addCT_PX(ct);
		return "redirect:/admin/export";
	}
	
	@RequestMapping("/admin/export/delete/{id}")
	public String Delete(@PathVariable String id) {
		if (!Init()) {
			return "redirect: /CafeTakeAway/login";
		}
		xuatKhoService.deletePhieuXuat(id);
		return "redirect:/admin/export";
	}
	
	@RequestMapping("/admin/export/deleteItem/{maPX}-{maNL}")
	public String DeleteItem(@PathVariable String maPX, @PathVariable String maNL) {
		if (!Init()) {
			return "redirect: /CafeTakeAway/login";
		}
		xuatKhoService.deleteItem(maPX, maNL);
		return "redirect:/admin/export";
	}
}
