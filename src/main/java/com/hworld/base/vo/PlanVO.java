package com.hworld.base.vo;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PlanVO {
	//요금제VO
    private Integer planNum;
    private String planName;
    private Integer planPrice;
    private Integer dataCapacity;
    private String categoryCode;
    private String planExplain;
    private String planExplainSM;
}
