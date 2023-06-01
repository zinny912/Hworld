package com.hworld.base.vo;

import java.util.Date;
import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ReviewVO {
    //리뷰 번호
    private Integer reviewNum;

    //제목
    private String title;

    //내용
    private String contents;

    //평점
    private Float rate;

    //등록 일자
    private Date regDate;

    //private List<MemberVO>memberVOs;
    private List<OrderVO> orderVOs;
    
}
