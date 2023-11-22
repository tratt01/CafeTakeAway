package CafeTakeAway.Service.User;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import CafeTakeAway.Dao.CartDao;
import CafeTakeAway.Dto.CartDto;

@Service
public class CartServiceImpl implements ICartService {

	@Autowired
	CartDao cartdao;
	
	public HashMap<Integer, CartDto> AddCard(int id, int quanty, HashMap<Integer, CartDto> cart) {
		return cartdao.AddCard(id, quanty, cart);
	}

	public HashMap<Integer, CartDto> EditCart(int id, int quanty, HashMap<Integer, CartDto> cart) {
		return cartdao.EditCart(id, quanty, cart);
	}

	public HashMap<Integer, CartDto> DeleteCart(int id, HashMap<Integer, CartDto> cart) {
		return cartdao.DeleteCart(id, cart);
	}

	public int TotalQuanty(HashMap<Integer, CartDto> cart) {
		return cartdao.TotalQuanty(cart);
	}

	public double TotalPrice(HashMap<Integer, CartDto> cart) {
		return cartdao.TotalPrice(cart);
	}

}
