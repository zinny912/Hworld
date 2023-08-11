package com.hworld.base.vo;

import java.sql.Date;

import javax.validation.constraints.NotBlank;

import org.springframework.boot.autoconfigure.AutoConfigureOrder;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ApplicationVO {
	
	//appNum auto_increment, phoneSubPrice필요, startDate now
	private Integer appNum;
	private String name;
	private String rrnf;
	private String rrnl;
	private String address1;
	private String address2;
	private String address3;
	private String planNum; //코드로 변경 가능성 있음
	@NotBlank
	private String phoneNum;
	private Integer disKind; //0-공시지원금, 1-선택약정12개월, 2-선택약정24개월
	private Integer phoneSubPrice;
	private Date startDate;
	private String directName;
	private String directCode;
	private String rrnlOrigin; //**** 나중에 삭제해야하는 컬럼 - 주민번호 뒷자리 평문저장
	
	//form 체크용
	private boolean checkTerms;
	
	//주고받는 내부용으로 사용
	private Integer memberNum;
	
	private ApplicationVO applicationVO;
	
}
