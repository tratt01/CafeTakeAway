package CafeTakeAway.Dao;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import CafeTakeAway.Dto.CartDto;
import CafeTakeAway.Entity.SanPham;

@Repository
public class CartDao {
	@Autowired
	SanPhamDao spdao = new SanPhamDao();
	
	public HashMap<Integer, CartDto> AddCard(int id, int quanty, HashMap<Integer, CartDto> cart) {
		CartDto itemCart = new CartDto();
		SanPham sp =  spdao.FindSanPhamById(id);
		
		if( sp != null) {
			if (cart.containsKey(id)) {
				itemCart = cart.get(id);
				itemCart.setQuanty(itemCart.getQuanty() + quanty);
				itemCart.setTotalPrice(itemCart.getQuanty() * itemCart.getProduct().getDonGiaSauKM());
			} else {
				itemCart.setProduct(sp);
				itemCart.setQuanty(quanty);
				itemCart.setTotalPrice(sp.getDonGiaSauKM() * quanty);
			}
		} 
		
		cart.put(id, itemCart);
		return cart;
	}
	
	public HashMap<Integer, CartDto> EditCart(int id, int quanty, HashMap<Integer, CartDto> cart) {
		CartDto itemCart = new CartDto();
		
		if (cart == null) {
			return cart;
		}
		
		if( cart.containsKey(id)) {
			itemCart = cart.get(id);
			itemCart.setQuanty(quanty);
			itemCart.setTotalPrice(itemCart.getQuanty() * itemCart.getProduct().getDonGiaSauKM());
		}
		
		cart.put(id, itemCart);
		return cart;
	}
	
	public HashMap<Integer, CartDto> DeleteCart(int id, HashMap<Integer, CartDto> cart) {
		if (cart == null) {
			return cart;
		}
		
		if( cart.containsKey(id)) {
			cart.remove(id);
		}
		return cart;
	}
	
	public int TotalQuanty(HashMap<Integer, CartDto> cart) {
		int totalQuanty = 0;
		
		for (Map.Entry<Integer, CartDto> itemCart : cart.entrySet()) {
			totalQuanty += itemCart.getValue().getQuanty();
		}
		
		return totalQuanty;
	}
	
	public double TotalPrice(HashMap<Integer, CartDto> cart) {
		int totalPrice = 0;
		
		for (Map.Entry<Integer, CartDto> itemCart : cart.entrySet()) {
			totalPrice += itemCart.getValue().getTotalPrice();
		}
		
		return totalPrice;
	}
}
