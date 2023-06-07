package com.hworld.base.vo;

import java.util.Date;
import java.util.List;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
public class QnaVO extends BoardVO{
   
	private Integer orderNum;
	
	private String directCode;
	
	private Integer serialNum;
	
    /**
     * 답변
     */
    private String reply;


    /**
     * 상태
     */
    private Integer state;

    /**
     * 카테고리 코드
     */
    private String categoryCode;

    /**
     * 파일 경로
     */
    private String filePath;

    //private List<MemberVO> memberVOs;
	private List<OrderVO> orderVOs;
	private List<DirectVO> directVOs;
	
}
