package CafeTakeAway.Controller.User;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import CafeTakeAway.Entity.User;
import CafeTakeAway.Service.User.AccountServiceImpl;

@Controller
public class loginController {
	@Autowired
	AccountServiceImpl accountservice;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET) 
	public ModelAndView loginPage() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("user", new User());
		mv.setViewName("user/login");
		return mv;
		
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST) 
	public ModelAndView loginAction(HttpSession session, @ModelAttribute("user") User user) {
		
		ModelAndView mv  = new ModelAndView();
		user = accountservice.checkAccount(user);
		if (user != null) {
			mv.setViewName("redirect:/admin");
			session.setAttribute("userInfo", user);
		}
		else {
			mv.setViewName("redirect:login");
		}

		return mv;
	}
	
	@RequestMapping(value = "/logout") 
	public String logut(HttpSession session) {
		session.removeAttribute("userInfo");
		return "redirect: /CafeTakeAway";
	}
	
	
}
