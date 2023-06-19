package com.hworld.base.vo;

import java.util.Date;
import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class OrderVO {
    //주문 번호
    private String orderNum;

    //주문 날짜
    private Date orderDate;

    //주문 상태
    private Integer orderState;

    //주문 수령인
    private String orderReceiver;

    //주문 주소1
    private String orderAddress1;

    //주문 주소2
    private String orderAddress2;

    //주문 주소3
    private String orderAddress3;

    //주문 전화번호
    private String orderTelNum;
    
    
    // DB엔 없음 ---------
    
    //주문 상품
    private List<OrderDirectVO> orderDirectVOs;
    
    //회원 번호 
    private Integer memberNum;
    
    //최종 가격 
    private Integer orderFinalPrice;
    
    private List<MemberVO> memberVOs;
    
    private List<DirectVO> directVOs;
    
	}
    
