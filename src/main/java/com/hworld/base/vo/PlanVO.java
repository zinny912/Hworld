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
    private String planExplainS;
    private String planExplainM;
    
    //할인요금 계산을 위한 disPercent 추가
    private Double disPercent;
    
    //commonCode 사용
    private String note;
    private String type;
}
