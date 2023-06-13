package com.hworld.base.vo;

import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class OrderDirectVO {
 
    //주문 수량
    private Integer orderAmount;

    private MemberVO memberVO;
    private DirectVO directVO;
    private OrderVO orderVO;
    
    private Integer totalPrice;
    
}
