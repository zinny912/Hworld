package com.hworld.base.vo;

import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CartVO {

    //장바구니 수량
    private Integer cartAmount;

	private String memberNum;
	
	private String directCode;
    
	private List<MemberVO> memberVOs;
    
	private List<DirectVO> directVOs;
	
}
