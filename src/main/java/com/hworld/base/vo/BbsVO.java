package com.hworld.base.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class BbsVO {
	private Integer num;
	private Integer memberNum;
	private String title;
	private Date regDate;
}
