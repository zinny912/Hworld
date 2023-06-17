package com.hworld.base.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hworld.base.dao.AdminDAO;
import com.hworld.base.util.Pager;
import com.hworld.base.vo.ApplicationVO;
import com.hworld.base.vo.MemberVO;
import com.hworld.base.vo.OrderVO;
import com.hworld.base.vo.TelephoneVO;

@Service
@Transactional(rollbackFor = Exception.class)
public class AdminService {
	
	@Autowired
	private AdminDAO adminDAO;
	
	// 회원 목록
	public List<MemberVO> memberList(Pager pager) throws Exception {
		Long totalCount = adminDAO.getTotalMember(pager);
		pager.makeNum(totalCount);
		pager.makeStartRow();		
		return adminDAO.memberList(pager);
	}
	
	// 회선 목록
	public List<MemberVO> phoneList(Pager pager) throws Exception { 
		Long totalCount = adminDAO.getTotalTelephone(pager); 
		pager.makeNum(totalCount);
		pager.makeStartRow(); 
		return adminDAO.phoneList(pager);
	}
	
	// 주문 목록
	public List<OrderVO> orderList(Pager pager) throws Exception { 
		Long totalCount = adminDAO.getTotalOrder(pager); 
		pager.makeNum(totalCount);
		pager.makeStartRow(); 
		return adminDAO.orderList(pager);
	}
	
	// 주문 상세
	public List<OrderVO> orderDetail(OrderVO orderVO) throws Exception { 		 
		return adminDAO.orderDetail(orderVO);
	}
	
//	// 상품 목록
//	public List<> productList(Pager pager) throws Exception { 
//		Long totalCount = adminDAO.getTotalProduct(pager); 
//		pager.makeNum(totalCount);
//		pager.makeStartRow(); 
//		return adminDAO.productList(pager);
//	}
//	
//	// 상품 리뷰
//	public List<> productReview(Pager pager) throws Exception { 
//		Long totalCount = adminDAO.getTotalReview(pager); 
//		pager.makeNum(totalCount);
//		pager.makeStartRow(); 
//		return adminDAO.productReview(pager);
//	}
//	
//	// 상품 문의
//	public List<> productInquiry(Pager pager) throws Exception { 
//		Long totalCount = adminDAO.getTotalPI(pager); 
//		pager.makeNum(totalCount);
//		pager.makeStartRow();
//		return adminDAO.productInquiry(pager);
//	}
//	
//	// 일반 문의
//	public List<> generalInquiry(Pager pager) throws Exception { 
//		Long totalCount = adminDAO.getTotalGI(pager); 
//		pager.makeNum(totalCount);
//		pager.makeStartRow(); 
//		return adminDAO.generalInquiry(pager);
//	}
//	
//	// 납부 목록
//	public List<> paymentList(Pager pager) throws Exception { 
//		Long totalCount = adminDAO.getTotalPL(pager); 
//		pager.makeNum(totalCount);
//		pager.makeStartRow(); 
//		return adminDAO.paymentList(pager);
//	}
//	
//	// 납부 상세 내역
//	public List<> paymentDetail() throws Exception { 
//		
//		return adminDAO.paymentDetail();
//	}
//	
//	// 미납 목록
//	public List<> unpaidList(Pager pager) throws Exception { 
//		Long totalCount = adminDAO.getTotalUL(pager); 
//		pager.makeNum(totalCount);
//		pager.makeStartRow(); 
//		return adminDAO.unpaidList(pager);
//	}
	 
	
}
