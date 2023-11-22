package CafeTakeAway.Controller.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import CafeTakeAway.Service.User.HomeServiceImpl;

@Controller
public class HomeController {
	@Autowired
	HomeServiceImpl homeservice;
	
	@RequestMapping(value= {"/", "/home"})
	public ModelAndView Index() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/index");
		mv.addObject("spkm", homeservice.GetDataSanPhamKM());
		mv.addObject("spmn", homeservice.GetDataSanPhamMoiNhat());
		mv.addObject("loaisp", homeservice.GetDataLoaiSanPham());
		return mv;
	}
	
	@RequestMapping(value= {"/aboutUs"})
	public ModelAndView AboutUs() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/aboutUs");
		mv.addObject("loaisp", homeservice.GetDataLoaiSanPham());
		return mv;
	}
	
	@RequestMapping(value= {"/feedbacks"})
	public ModelAndView Feedbacks() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/feedbacks");
		mv.addObject("loaisp", homeservice.GetDataLoaiSanPham());
		return mv;
	}
	
}
