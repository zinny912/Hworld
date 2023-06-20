package com.hworld.base.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.mail.Session;
import javax.servlet.http.HttpSession;

import org.hibernate.validator.constraints.Length;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hworld.base.controller.DirectController;
import com.hworld.base.dao.CartDAO;
import com.hworld.base.dao.DirectDAO;
import com.hworld.base.dao.MemberDAO;
import com.hworld.base.dao.OrderDAO;
import com.hworld.base.vo.CartVO;
import com.hworld.base.vo.DirectVO;
import com.hworld.base.vo.MemberVO;
import com.hworld.base.vo.OrderDirectVO;
import com.hworld.base.vo.OrderVO;
import com.hworld.base.vo.PayVO;

import lombok.extern.slf4j.Slf4j;
@Slf4j
@Service
public class OrderService {

	@Autowired 
	private OrderDAO orderDAO;
	@Autowired
	private MemberDAO memberDAO;
	@Autowired
	private DirectDAO directDAO;
	@Autowired
	private CartDAO cartDAO;
	
	//주문이 들어옴
	//order를 insert 해서 orderNum을 발생시키고 이 orderNum을 받아옴(전체 다)
	//주문 들어온 directCode를 기반으로 orderDirectVO를 만들어줌(directCode의 갯수만큼)
	//** orderPageVO는 안쓰는걸로....
	
	//OrderPageVO로 작업
	public List<OrderDirectVO> getOrderInfo(OrderDirectVO orderDirectVO) throws Exception{
		
		List<OrderDirectVO> ar = new ArrayList<>();
		
		//Controller에서 받아온 orderPageVO에 적힌 내용을 ','로 parsing한 후, list에 하나씩 담아주는 작업이 필요
		String[] directCode = orderDirectVO.getDirectCode().split(",");
		String[] orderAmount = orderDirectVO.getOrderAmount().split(",");
		String[] calPrice = orderDirectVO.getCalPrice().split(",");
		

	    for (int i = 0; i < directCode.length; i++) {
	        OrderDirectVO vo = new OrderDirectVO();
	        DirectVO vo2 = new DirectVO();
	        
			vo2.setDirectCode(directCode[i]);
			vo2 = orderDAO.getDirectDetail(vo2);
			vo.setDirectVO(vo2); 
			
			vo.setDirectCode(directCode[i]);
			vo.setOrderAmount(orderAmount[i]);
			vo.setCalPrice(calPrice[i]);
			ar.add(vo);
			
	    }
	    
	    
		return ar;
	}
	

	
	public void order(OrderDirectVO orderDirectVO, MemberVO memberVO, OrderVO orderVO)throws Exception{
		/* DB 주문, 주문상품(배송정보) 넣기 */
		// orderNum 만들기 및 OrderDTO객체 orderNum에 저장
		Date date = new Date();
		SimpleDateFormat format = new SimpleDateFormat("_yyyyMMddHHmmss");
		String orderNum = memberVO.getMemberNum()+format.format(date);
		
		orderDirectVO.setOrderNum(orderNum);
		orderVO.setOrderNum(orderNum);		
		orderVO.setOrderAddress1(orderVO.getOrderAddress1());
		orderVO.setOrderAddress2(orderVO.getOrderAddress2());
		orderVO.setOrderAddress3(orderVO.getOrderAddress3());
		orderVO.setOrderTelNum(orderVO.getOrderTelNum());
		orderVO.setOrderDate(date);
		orderVO.setOrderState(0);
		
		orderVO.setMemberNum(memberVO.getMemberNum());
		//orderVO.setOrderFinalPrice(orderVO.getOrderFinalPrice());
		
		
		orderDAO.setInsert(orderVO); //주문 테이블 등록 

		
		//주문 정보
		List<OrderDirectVO> ar = new ArrayList<>();
		
		//Controller에서 받아온 orderPageVO에 적힌 내용을 ','로 parsing한 후, list에 하나씩 담아주는 작업이 필요
		String[] directCode = orderDirectVO.getDirectCode().split(",");
		String[] orderAmount = orderDirectVO.getOrderAmount().split(",");
		String[] calPrice = orderDirectVO.getCalPrice().split(",");
		
	    for (int i = 0; i < directCode.length; i++) {
	        OrderDirectVO vo = new OrderDirectVO();
	        DirectVO directVO = new DirectVO();
			vo.setDirectCode(directCode[i]);
			vo.setOrderAmount(orderAmount[i]);
			vo.setMemberNum(memberVO.getMemberNum());
			vo.setOrderNum(orderNum);
			ar.add(vo);
			orderDAO.setODInsert(vo);
			
			
			//재고 변동 
			directVO.setDirectCode(directCode[i]);
			directVO = orderDAO.getDirectDetail(directVO);
			int directStockInt = directVO.getDirectStock();
			int orderAmountInt = Integer.parseInt(orderAmount[i]);
			System.out.println(directStockInt);
			System.out.println(orderAmountInt);
			int Stock = directStockInt-orderAmountInt;
			directVO.setDirectStock(Stock);
			
			orderDAO.deductStock(directVO);
			
			//장바구니 제거 
			CartVO cartVO = new CartVO();
			cartVO.setMemberNum(memberVO.getMemberNum());
			cartVO.setDirectCode(directCode[i]);
			cartDAO.setDelete(cartVO);
			
	    }

	}
	
	
	
	public int setOrderPayment(PayVO payVO)throws Exception{
		
		orderDAO.orderPayment(payVO);
		
		return 0;
		
	}
	
	
	
	
}
