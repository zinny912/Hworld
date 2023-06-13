package com.hworld.base.vo;

import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class OrderDirectVO {
    //주문 상품 번호
    private Integer orderDirectNum;


    //주문 수량
    private Integer orderAmount;

    private List<MemberVO> memberVOs;
    private List<DirectVO> directVOs;
    private List<OrderVO> orderVOs;
    
}
