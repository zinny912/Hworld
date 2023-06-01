package com.hworld.base.vo;

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

    //Direct 파일 경로
    private String directFilePath;

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

}
