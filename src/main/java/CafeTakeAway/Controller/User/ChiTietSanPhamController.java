package CafeTakeAway.Controller.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import CafeTakeAway.Service.User.ChiTietSPServiceImpl;
import CafeTakeAway.Service.User.HomeServiceImpl;
import CafeTakeAway.Service.User.LoaiSanPhamServiceImpl;

@Controller
public class ChiTietSanPhamController {
	@Autowired
	HomeServiceImpl homeservice;
	@Autowired
	ChiTietSPServiceImpl sanpham;
	@Autowired
	LoaiSanPhamServiceImpl loaispservice;
	
	@RequestMapping("/products/productDetail/{id}")
	public ModelAndView ChiTietSp(@PathVariable int id) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/products/product");

		mv.addObject("loaisp", homeservice.GetDataLoaiSanPham());
		mv.addObject("sanpham", sanpham.GetDataSanPhamById(id));
		mv.addObject("tenloai", loaispservice.GetTenLoaiSanPhamByID(id));
		mv.addObject("splienquan", loaispservice.GetDataSanPhamByLoaiSP(loaispservice.GetTenLoaiSanPhamByID(id).getMaLoai()));
		
		
		return mv;
	}
}
