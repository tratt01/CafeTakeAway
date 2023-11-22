package CafeTakeAway.Controller.User;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import CafeTakeAway.Dto.CartDto;
import CafeTakeAway.Service.Admin.HoaDonServiceImpl;
import CafeTakeAway.Service.User.CartServiceImpl;
import CafeTakeAway.Service.User.HomeServiceImpl;

@Controller
public class ShoppingCartController {
	@Autowired
	HomeServiceImpl homeservice;
	@Autowired
	CartServiceImpl cartservice;
	@Autowired
	HoaDonServiceImpl hoaDonService;
	
	@RequestMapping("/shoppingCart")
	public ModelAndView AddCart(HttpServletRequest request, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("loaisp", homeservice.GetDataLoaiSanPham());
		HashMap<Integer, CartDto> cart = (HashMap<Integer, CartDto>)session.getAttribute("Cart");

		if (cart == null) {
			cart = new HashMap<Integer, CartDto>();
		}
		
		session.setAttribute("Cart", cart);
		session.setAttribute("totalQuanty", cartservice.TotalQuanty(cart));
		session.setAttribute("totalPrice", cartservice.TotalPrice(cart));
		
		mv.setViewName("user/cart/cart");
		return mv;

	}
	
	@RequestMapping(value= "/shoppingCart/checkout")
	public ModelAndView CheckOut(HttpServletRequest request, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		if (session.getAttribute("userInfo") == null) {
			mv.setViewName("redirect:../login");
			return mv;
		}
		
		HashMap<Integer, CartDto> cart = (HashMap<Integer, CartDto>)session.getAttribute("Cart");

		if (cart != null) {
			hoaDonService.createNewHoaDon(session, cart);
		}
		cart = new HashMap<Integer, CartDto>();
		mv.setViewName("redirect:../admin/orders");
		
		session.setAttribute("Cart", cart);
		session.setAttribute("totalQuanty", 0);
		session.setAttribute("totalPrice", 0);
		return mv;
	}
		
}
