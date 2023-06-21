package com.hworld.base.vo;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class DirectVO {
    //Direct 코드
    private String directCode;

    //Direct 이름
    private String directName;

    //Direct 내용
    private String directContents;

    //Direct 가격
    private Integer directPrice;

    //Direct 재고
    private Integer directStock;

    //카테고리 코드
    private String categoryCode;

    //브랜드 코드
    private String brandCode;

    //색상 코드
    private String colorCode;

    //저장 용량
    private String saveCapacity;
    
    //업로드 날짜 
    private Timestamp uploadDate;
    
    
    //리뷰 별점 가져오기 위한 VO 설정 (쿼리에서 받아옴)
    private Double rate;
    
    //제품코드에서 제품명만 가져오기 위한 VO 설정
    private String slicedCode;
    
    //같은 제품명 중 제일 낮은 가격이 대표값으로 리스트에 나오게 하기 위한 VO 설정 (쿼리) 
    private String initPrice;
    
    private String value;
    
    private String phoneNum;
    
    //요금제 리스트 가져오기 위한 VO 설정 (요금제 선택)
    private List<PlanVO> planList;
     
 
}
