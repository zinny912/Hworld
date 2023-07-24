package com.hworld.base.vo;

import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CartVO {

	private Integer cartNum;
    //장바구니 수량
    private String cartAmount;

	private Integer memberNum;
	
	private String directCode;
    
	private String directName;
	
	private Integer directPrice;
	
	private Integer totalPrice;
	
//	public void initTotal() {
//		this.totalPrice = this.directPrice*this.cartAmount;
//	}
	
	private String brandCode;
	
	private String colorCode;
	
	private Integer cartCount;
	
}
