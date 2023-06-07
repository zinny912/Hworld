package com.hworld.base.vo;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PlanVO {
	//요금제VO
    private String planNum;
    private String planName;
    private Integer planPrice;
    private String dataCapacity;
    private String categoryCode;
    private String planExplain;
    private String planExplainSM;
    
    private String note;
    private String type;
}
