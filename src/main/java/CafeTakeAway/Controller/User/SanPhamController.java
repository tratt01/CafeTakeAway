package CafeTakeAway.Controller.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import CafeTakeAway.Dto.PageDto;
import CafeTakeAway.Service.User.HomeServiceImpl;
import CafeTakeAway.Service.User.LoaiSanPhamServiceImpl;
import CafeTakeAway.Service.User.PageServiceImpl;

@Controller
public class SanPhamController {
	@Autowired
	HomeServiceImpl homeservice;
	@Autowired
	LoaiSanPhamServiceImpl loaiSPService;
	@Autowired
	PageServiceImpl pageService;
	
	@RequestMapping(value="/products")
	public ModelAndView Product(@RequestParam(defaultValue = "1") String page) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/products/products");
		mv.addObject("loaisp", homeservice.GetDataLoaiSanPham());
		
		int totalData = loaiSPService.GetAllDataSanPham().size();
		PageDto pageDto = pageService.GetAllPages(totalData, totalData, Integer.parseInt(page));
	
		mv.addObject("page", pageDto);
		mv.addObject("totalData", totalData);
		mv.addObject("SanPhamByPage", loaiSPService.GetAllDataSanPham_Page(pageDto.getstartPage(), pageDto.getendPage()));
		return mv;
	}
	
	
	@RequestMapping(value="/category/{id}")
	public ModelAndView Product(@PathVariable int id, @RequestParam(defaultValue = "1") String page) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/products/category");
		mv.addObject("loaisp", homeservice.GetDataLoaiSanPham());
		
		int totalData = loaiSPService.GetDataSanPhamByLoaiSP(id).size();
		PageDto pageDto = pageService.GetAllPages(totalData, 9, Integer.parseInt(page));
		
		mv.addObject("page", pageDto);
		mv.addObject("totalData", totalData);
		mv.addObject("idLoaiSP", id);
		mv.addObject("SanPhamByPage", loaiSPService.GetDataSanPham_Page(id, pageDto.getstartPage(), pageDto.getendPage()));
		return mv;
	}
}
