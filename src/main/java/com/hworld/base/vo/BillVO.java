package com.hworld.base.vo;

import java.sql.Date;
import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BillVO {
	//청구내역(PAYMENTDETAILS) - 청구서
	//미납 내역 : 청구1, 납부0, 납부기한 < now(WHERE PAYMAXDATE < NOW();) 인 것을 조건으로
	
	private Integer billNum;
	private Integer serialNum;
	private String planNum;
	private Integer billCheck; //0: db에만 존재하는 청구서(사용자 발급x), 1: 사용자 한테 발급된 청구서
	private Integer paidCheck; //0: 미납, 1: 납부
	private Integer phonePayPrice; //월 기기 납부금액
	private Integer phoneSplitTax; //단말기 분할 상환 수수료
	private Integer phoneSplitPrice; //단말기 분할 상환금
	private Integer disPlanPrice; //선택약정 받은 통신요금
	private Integer ePlanPrice; //부가서비스 금액
	private Integer totalPrice; //월 납부금액
	private Integer overduePrice; //연체료
	private Date payMaxDate; //납부기한
	private Date useDate; //사용일
	private String payMonth; //청구 년/월
	private String bfPlanPrice; //요금제 변경 전 총 요금
	private Date planChangeDate; //요금제 변경 날짜
	private Date paidDate; //납부일
	private Integer cancelPrice; //위약금 내용
	private Integer disPrice;
	
	//청구내역은 하나의 회선에 대한 청구정보
	//billVO에 포함된 serialNum 으로 telephoneVO detail을 조회해서 billVO에 넣어두면 쉽게사용할 수 있을거같음
	//private TelephoneVO telephoneVO;
	//private MemberVO memberVO;
	
	//요금제 변경시 사용할 
	private String nowDate;
	
	//요금제 변경일자 30일 체크
	private Integer result;
	
	
	private List<TelephoneVO> telephoneVOs;
}
