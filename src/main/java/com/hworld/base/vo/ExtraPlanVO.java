package com.hworld.base.vo;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ExtraPlanVO {
	//부가서비스VO 
    private String extraPlanNum;
    private String extraPlanName;
    private Integer extraPrice;
    private String extraPlanExplain;
    private String extraPlanExplainS;
    private String extraPlanExplainM;
    private String categoryCode;
    private Integer disabled;
}
