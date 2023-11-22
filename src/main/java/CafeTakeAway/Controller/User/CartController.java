package CafeTakeAway.Controller.User;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import CafeTakeAway.Dto.CartDto;
import CafeTakeAway.Service.User.CartServiceImpl;
import CafeTakeAway.Service.User.HomeServiceImpl;

@Controller
public class CartController {
	@Autowired
	HomeServiceImpl homeservice;
	@Autowired
	CartServiceImpl cartservice;
	
	@RequestMapping("/addCart/{id}")
	public String AddCart(HttpServletRequest request, HttpSession session, @PathVariable int id, @RequestParam(required = false, defaultValue = "1") Integer quanty) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("loaisp", homeservice.GetDataLoaiSanPham());
		@SuppressWarnings("unchecked")
		HashMap<Integer, CartDto> cart = (HashMap<Integer, CartDto>)session.getAttribute("Cart");

		if (cart == null) {
			cart = new HashMap<Integer, CartDto>();
		}
		
		cart = cartservice.AddCard(id, quanty, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("totalQuanty", cartservice.TotalQuanty(cart));
		session.setAttribute("totalPrice", cartservice.TotalPrice(cart));
		return "redirect:" + request.getHeader("Referer");

	} 
	
	@RequestMapping("/editCart/{id}")
	public String EditCart(HttpServletRequest request, HttpSession session, @PathVariable int id, @RequestParam() Integer newQuanty ) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("loaisp", homeservice.GetDataLoaiSanPham());
		@SuppressWarnings("unchecked")
		HashMap<Integer, CartDto> cart = (HashMap<Integer, CartDto>)session.getAttribute("Cart");

		if (cart == null) {
			cart = new HashMap<Integer, CartDto>();
		}
		
		cart = cartservice.EditCart(id, newQuanty, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("totalQuanty", cartservice.TotalQuanty(cart));
		session.setAttribute("totalPrice", cartservice.TotalPrice(cart));
		return "redirect:" + request.getHeader("Referer");

	}
	
	@RequestMapping("/deleteCart/{id}")
	public String DeleteCart(HttpServletRequest request, HttpSession session, @PathVariable int id) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("loaisp", homeservice.GetDataLoaiSanPham());
		HashMap<Integer, CartDto> cart = (HashMap<Integer, CartDto>)session.getAttribute("Cart");

		if (cart == null) {
			return "redirect:" + request.getHeader("Referer");
		}
		
		cart = cartservice.DeleteCart(id, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("totalQuanty", cartservice.TotalQuanty(cart));
		session.setAttribute("totalPrice", cartservice.TotalPrice(cart));
		return "redirect:" + request.getHeader("Referer");

	}
}
