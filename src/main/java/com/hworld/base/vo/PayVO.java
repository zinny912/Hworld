package com.hworld.base.vo;

import java.util.Date;
import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PayVO {

	private Integer payNum;
	
	private String orderNum;

	private Integer memberNum;
	    
    //최종 가격 
    private Integer orderFinalPrice;
    
    private Date payDate;
}
