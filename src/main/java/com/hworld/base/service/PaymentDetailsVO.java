package com.hworld.base.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PaymentDetailsVO {
	private Integer biilNum;
	private Integer serialNum;
	private String planNum;
	private Integer billCheck;
	private Integer paidCheck;
	private Integer phonePayPrice;
	private Integer phoneSplitTax;
	private Integer phoneSplitPrice;
	private Integer disPlanPrice;
	private Integer ePlanPrice;
	private Integer totalPrice;
	private Integer overduePrice;
	private Date payMaxDate;
	private Date useDate;
	private String payMonth;
	private Integer bfPlanPrice;
	private Date planChangeDate;
	
}
