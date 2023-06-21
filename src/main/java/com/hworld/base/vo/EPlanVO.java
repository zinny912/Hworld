package com.hworld.base.vo;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class EPlanVO {
	//부가서비스VO 
    private String ePlanNum;
    private String ePlanName;
    private Integer ePrice;
    private String ePlanExplain;
    private String ePlanExplainS;
    private String ePlanExplainM;
    private String categoryCode;
}
