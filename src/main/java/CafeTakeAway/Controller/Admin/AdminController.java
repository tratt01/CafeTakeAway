package CafeTakeAway.Controller.Admin;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import CafeTakeAway.Entity.User;

@Controller
public class AdminController extends BaseClass {
	
	
	@RequestMapping(value = {"/admin", "/admin/", "/admin/home", "/admin/home/"})
	public ModelAndView AdminHome(HttpSession session) {
		User u = (User) session.getAttribute("userInfo");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/admin/index");
		if (!Init()) {
			mv.setViewName("redirect: /CafeTakeAway/login");
		}
		if (u != null) {
			mv.addObject("maNV", u.getMaNV());
		}
		
		return mv;
	}
	

}
