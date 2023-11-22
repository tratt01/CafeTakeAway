package CafeTakeAway.Controller.Admin;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import CafeTakeAway.Entity.User;
import CafeTakeAway.Service.Admin.UserServiceImpl;


@Controller
public class BaseClass {
	@Autowired
	HttpSession _session ;
	@Autowired
	UserServiceImpl _userService;
	ModelAndView _mv = new ModelAndView();
	public boolean Init() {
		User u = (User) _session.getAttribute("userInfo");
		if (u != null) {
			String role = u.getchucVu();
			if (role.equals("ADMIN")) {
				return true;
			}
		}
		_mv.addObject("nv", u);
		return false;
	}
	
}
