package CafeTakeAway.Dto;

import CafeTakeAway.Entity.SanPham;

public class CartDto {
	private int quanty;
	private double totalPrice;
	private SanPham product;
	
	public CartDto() {
		super();
	}
	
	public CartDto(int quanty, double totalPrice, SanPham product) {
		super();
		this.quanty = quanty;
		this.totalPrice = totalPrice;
		this.product = product;
	}

	public int getQuanty() {
		return quanty;
	}
	public void setQuanty(int quanty) {
		this.quanty = quanty;
	}
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	public SanPham getProduct() {
		return product;
	}
	public void setProduct(SanPham product) {
		this.product = product;
	}
	
	
}
