package CafeTakeAway.Service.User;

import java.util.HashMap;

import org.springframework.stereotype.Service;

import CafeTakeAway.Dto.CartDto;

@Service
public interface ICartService {
	public HashMap<Integer, CartDto> AddCard(int id, int quanty, HashMap<Integer, CartDto> cart);
	
	public HashMap<Integer, CartDto> EditCart(int id, int quanty, HashMap<Integer, CartDto> cart);
	
	public HashMap<Integer, CartDto> DeleteCart(int id, HashMap<Integer, CartDto> cart);
	
	public int TotalQuanty(HashMap<Integer, CartDto> cart);
	
	public double TotalPrice(HashMap<Integer, CartDto> cart);
}
