package com.hworld.base.vo;

import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class OrderDirectVO {
 
    //주문 수량
    private Integer orderAmount;

    private String directCode;
    
    private String orderNum;
    
    // DB엔 없음 -------
    
    //상품 한개 가격 
    private Integer onePrice;
    
    //총 가격 (가격 * 주문수량)
    private Integer totalPrice;
    
    
    public void initTotal() {
		this.totalPrice = this.onePrice * this.orderAmount;
	}
    
    
}
