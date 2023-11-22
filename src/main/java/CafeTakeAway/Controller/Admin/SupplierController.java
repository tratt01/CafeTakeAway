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

import CafeTakeAway.Entity.NhaCungCap;
import CafeTakeAway.Service.Admin.NCCServiceImpl;

@Controller
public class SupplierController extends BaseClass {
	@Autowired
	NCCServiceImpl nccService;
	String status = "Thêm Nhà Cung cấp";
	
	@RequestMapping("/admin/suppliers") 
	public ModelAndView Supplier() {
		ModelAndView mv = new ModelAndView("admin/supplier/suppliers");
		if (!Init()) {
			mv.setViewName("redirect: /CafeTakeAway/login");
		}
		mv.addObject("ncc", nccService.getAllNCC());
		return mv;
	}
	
	@RequestMapping("/admin/supplier/add") 
	public ModelAndView add() {
		ModelAndView mv = new ModelAndView("admin/supplier/add");
		if (!Init()) {
			mv.setViewName("redirect: /CafeTakeAway/login");
		}
		mv.addObject("status", status);
		mv.addObject("ncc", new NhaCungCap());
		return mv;
	}
	
	@RequestMapping(value = "/admin/supplier/add", method = RequestMethod.POST) 
	public String addAction(@ModelAttribute("ncc") NhaCungCap ncc) {
		status = "Thêm thất bại hoặc trùng Mã NCC";
		if (!Init()) {
			return "redirect: /CafeTakeAway/login";
		}
		byte[] bytes = ncc.getTenNCC().getBytes(ISO_8859_1);
		String tenNCC = new String(bytes, UTF_8);
		ncc.setTenNCC(tenNCC);
		
		bytes = ncc.getDiaChi().getBytes(ISO_8859_1);
		String diaChi = new String(bytes, UTF_8);
		ncc.setDiaChi(diaChi);
		
		if (nccService.addNhaCungCap(ncc)) {
			status = "Thêm Nhà cung cấp";
			return "redirect:/admin/suppliers";
		}
		return "redirect:/admin/supplier/add";
	}
	
	@RequestMapping("/admin/supplier/update/{id}") 
	public ModelAndView update(@PathVariable String id) {
		ModelAndView mv = new ModelAndView("admin/supplier/update");
		if (!Init()) {
			mv.setViewName("redirect: /CafeTakeAway/login");
		}
		mv.addObject("ncc", nccService.getNCCById(id));
		return mv;
	}
	
	@RequestMapping(value = "/admin/supplier/update/{id}", method = RequestMethod.POST) 
	public String updateAction(@ModelAttribute("ncc") NhaCungCap ncc) {
		status = "Chỉnh sửa thất bại hoặc trùng Mã NCC";
		if (!Init()) {
			return "redirect: /CafeTakeAway/login";
		}
		byte[] bytes = ncc.getTenNCC().getBytes(ISO_8859_1);
		String tenNCC = new String(bytes, UTF_8);
		ncc.setTenNCC(tenNCC);
		
		bytes = ncc.getDiaChi().getBytes(ISO_8859_1);
		String diaChi = new String(bytes, UTF_8);
		ncc.setDiaChi(diaChi);
		
		if (nccService.updateNCC(ncc)) {
			status = "Chỉnh sửa Nhà cung cấp";
		}
		return "redirect:/admin/supplier/update/" + ncc.maNCC;
	}
	
	@RequestMapping("/admin/supplier/delete/{id}") 
	public String delete(@PathVariable String id) {
		if (!Init()) {
			return "redirect: /CafeTakeAway/login";
		}
		nccService.deleteNCC(id);
		return "redirect:/admin/suppliers";
	}
	
}
