package com.hworld.base.vo;

import java.util.Date;
import java.util.List;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
public class NoticeVO extends BoardVO {

    /**
     * 파일 경로
     */
    private String filePath;
    private Integer noticeCheck;
    private Integer hit;

    
}
