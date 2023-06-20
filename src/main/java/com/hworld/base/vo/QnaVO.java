package com.hworld.base.vo;

import java.util.Date;
import java.util.List;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
public class QnaVO extends BoardVO{
	//주문번호 
	private String orderNum;
	
	private String slicedCode;
	
	private Integer serialNum;
	
    //답변 (관리자)
    private String reply;

    //상태
    private Integer state;

    //카테고리 코드
    private String categoryCode;

    //답변작성일
    private Date replyDate;
    
    //파일경로
    private String filePath;
    
    private String email;
    private String newCode;

    private List<MemberVO> memberVOs;
	private List<OrderVO> orderVOs;
	private List<DirectVO> directVOs;
	private List<OrderDirectVO> orderDirectVOs;
	
}
