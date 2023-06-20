package com.hworld.base.vo;

import java.util.Date;
import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ReviewVO {
    //리뷰 번호
    private Integer num;

    //내용
    private String contents;

    //평점
    private Float rate;

    //등록 일자
    private Date regDate;

    //member 이름
    private String email;
    
    private Integer memberNum;
    
    private String orderNum;
    
    private Long count;
    
    private String slicedCode;

    private String categoryCode;
    
    private List<MemberVO> memberVOs;
    
    private List<OrderVO> orderVOs;
    
    private List<OrderDirectVO> orderDirectVOs;
    
    private List<DirectVO> directVOs;
    
    
    
	
    
}
