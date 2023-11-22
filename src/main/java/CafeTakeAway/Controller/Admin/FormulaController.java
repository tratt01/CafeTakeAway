package CafeTakeAway.Controller.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import CafeTakeAway.Entity.CongThuc;
import CafeTakeAway.Service.Admin.CongThucServiceImpl;
import CafeTakeAway.Service.Admin.NguyeLieuServiceImpl;
import CafeTakeAway.Service.User.LoaiSanPhamServiceImpl;;


@Controller
public class FormulaController extends BaseClass {
	@Autowired
	NguyeLieuServiceImpl nguyenLieuService;
	@Autowired
	LoaiSanPhamServiceImpl loaiSPService;
	@Autowired
	CongThucServiceImpl congThucService;
	
	@RequestMapping("/admin/formula")
	public ModelAndView Fomula() {
		ModelAndView mv = new ModelAndView("admin/formula/formulas");
		if (!Init()) {
			mv.setViewName("redirect: /CafeTakeAway/login");
		}
		mv.addObject("ct", congThucService.getAllCongThuc());
		return mv;
	}
	
	@RequestMapping("/admin/formula/detail/{id}")
	public ModelAndView Details(@PathVariable String id) {
		ModelAndView mv = new ModelAndView("admin/formula/detail");
		if (!Init()) {
			mv.setViewName("redirect: /CafeTakeAway/login");
		}
		mv.addObject("ct", congThucService.getAllCongThucByMaSp(id));
		return mv;
	}
	
	@RequestMapping("/admin/formula/add")
	public ModelAndView addFormula() {
		ModelAndView mv = new ModelAndView("admin/formula/add");
		if (!Init()) {
			mv.setViewName("redirect: /CafeTakeAway/login");
		}
		mv.addObject("sp", loaiSPService.GetAllDataSanPham());
		mv.addObject("nl", nguyenLieuService.getAllNguyenLieu());
		mv.addObject("newCT", new CongThuc());
		return mv;
	}

	@RequestMapping(value = "/admin/formula/add", method = RequestMethod.POST)
	public String addFormulaAction(@ModelAttribute("newCT") CongThuc ct) {
		if (!Init()) {
			return "redirect: /CafeTakeAway/login";
		}
		congThucService.addCongThuc(ct);
		return "redirect:/admin/formula";
	}
	
	@RequestMapping("/admin/formula/delete/{id}")
	public String Delete(@PathVariable String id) {
		if (!Init()) {
			return "redirect: /CafeTakeAway/login";
		}
		String[] ids = id.split("-");
		congThucService.deleteCongThucByMaNL(ids);
		return "redirect:/admin/formula";

	}
	
}
