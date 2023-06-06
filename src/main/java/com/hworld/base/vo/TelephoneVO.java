package com.hworld.base.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class TelephoneVO {
	
	private Integer serialNum;
	private String planNum;
	private Integer memberNum;
	private Integer appNum;
	private String phoneNum;
	private Date contractDate;
	private Date expireDate;
	private String directName;

	
}
