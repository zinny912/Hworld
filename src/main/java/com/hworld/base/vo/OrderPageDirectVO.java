package com.hworld.base.vo;

import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class OrderPageDirectVO {
 
	// 전달 받을 값 
	private String directCode;
    
	private Integer orderAmount;
	
	// DB로부터 꺼내올 값
	private String directName;
	
	private Integer directPrice;
	
	// 만들어 낼 값
	private Integer totalPrice;
	
	
	public void initTotal() {
		this.totalPrice = this.directPrice*this.orderAmount;
	}
    
}
