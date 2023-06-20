package com.hworld.base.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.hworld.base.util.Pager;
import com.hworld.base.vo.ApplicationVO;
import com.hworld.base.vo.BillVO;
import com.hworld.base.vo.DirectVO;
import com.hworld.base.vo.MemberVO;
import com.hworld.base.vo.OrderVO;
import com.hworld.base.vo.QnaVO;
import com.hworld.base.vo.ReviewVO;
import com.hworld.base.vo.TelephoneVO;

@Mapper
public interface AdminDAO {
	
	// 회원 목록
	public Long getTotalMember(Pager pager) throws Exception;
	
	public List<MemberVO> memberList(Pager pager) throws Exception;
	
	// 회선 목록
	public Long getTotalTelephone(Pager pager) throws Exception;
	
	public List<MemberVO> phoneList(Pager pager) throws Exception;
	
	// 주문 목록
	public Long getTotalOrder(Pager pager) throws Exception;
	
	public List<OrderVO> orderList(Pager pager) throws Exception;
	
	// 주문 상세
	public List<OrderVO> orderDetail(OrderVO orderVO) throws Exception;
	
	// 상품 목록
	public Long getTotalProduct(Pager pager) throws Exception;
	
	public List<DirectVO> productList(Pager pager) throws Exception;
	
	// 상품 리뷰
	public Long getTotalReview(Pager pager) throws Exception;
	
	public List<ReviewVO> productReview(Pager pager) throws Exception;
	
	// 상품 문의
	public Long getTotalPI(Pager pager) throws Exception;
	
	public List<QnaVO> productInquiry(Pager pager) throws Exception;
	
	// 일반 문의 상세 
	public List<QnaVO> productInquiryDetail(QnaVO qnaVO) throws Exception;
	
	// 일반 문의 상세 - 답변 Update
	public int productInquiryReply(QnaVO qnaVO) throws Exception;
	
	// 일반 문의
	public Long getTotalGI(Pager pager) throws Exception;
	
	public List<QnaVO> generalInquiry(Pager pager) throws Exception;
	
	// 일반 문의 상세 
	public List<QnaVO> generalInquiryDetail(QnaVO qnaVO) throws Exception;
	
	// 일반 문의 상세 - 답변 Update
	public int generalInquiryReply(QnaVO qnaVO) throws Exception;
	
	// 납부 목록
	public Long getTotalPL(Pager pager) throws Exception;
	
	public List<BillVO> paymentList(Pager pager) throws Exception;
	
//	// 납부 상세 내역
//	public List<> paymentDetail() throws Exception;
	
	// 미납 목록
	public Long getTotalUL(Pager pager) throws Exception;
	
	public List<BillVO> unpaidList(Pager pager) throws Exception;
	

}
