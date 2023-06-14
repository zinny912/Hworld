package com.hworld.base.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.mail.Session;
import javax.servlet.http.HttpSession;

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
import com.hworld.base.vo.OrderPageDirectVO;
import com.hworld.base.vo.OrderVO;

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
	
	
	public List<OrderPageDirectVO> getDirectDetail(List<OrderPageDirectVO> orderPageDirectVOs) throws Exception{
		
		List<OrderPageDirectVO> result = new ArrayList<OrderPageDirectVO>();
		log.error(orderPageDirectVOs.get(0).getDirectCode());
		for(OrderPageDirectVO opds : orderPageDirectVOs) {
			
			OrderPageDirectVO directDetail = orderDAO.getDirectDetail(opds.getDirectCode());
			
			directDetail.setOrderAmount(opds.getOrderAmount());
			directDetail.initTotal();
			
			result.add(directDetail);
			
		}
		return result;
	}
	
	
	public void order(OrderVO orderVO, HttpSession session)throws Exception{
		//회원 정보 
		Object member = session.getAttribute("memberNum");
		//주문 정보
		List<OrderDirectVO> ods = new ArrayList<>();
		for(OrderDirectVO odss : orderVO.getOrderDirectVOs()) {
			OrderDirectVO orderDirectVO = orderDAO.getOrderInfo(odss.getDirectCode());
			orderDirectVO.setOrderAmount(odss.getOrderAmount());
			orderDirectVO.initTotal();
			ods.add(orderDirectVO);
			
		}
		//OrderVO 세팅
		orderVO.setOrderDirectVOs(ods);
		orderVO.getOrderFinalPrice();
		
		/* DB 주문, 주문상품(배송정보) 넣기 */
		// orderNum 만들기 및 OrderDTO객체 orderNum에 저장
		Date date = new Date();
		SimpleDateFormat format = new SimpleDateFormat("_yyyyMMddHHmmss");
		String orderNum = session.getAttribute("memberNum")+format.format(date);
		orderVO.setOrderNum(orderNum);
		
		//DB넣기
		orderDAO.setInsert(orderVO); //주문 테이블 등록 
		for (OrderDirectVO odss : orderVO.getOrderDirectVOs()) { //주문 아이템테이블 등록
			odss.setOrderNum(orderNum);
			orderDAO.setODInsert(odss);
			
		}
		
		/* 재고 변동 적용 */
		for(OrderDirectVO odss : orderVO.getOrderDirectVOs()) {
			//변경 재고 값 구하기
			List<DirectVO> directVOList = directDAO.getDetail(odss.getDirectCode());
			for(DirectVO directVO : directVOList) {
				directVO.setDirectStock(directVO.getDirectStock()-odss.getOrderAmount());
				//변동 값 DB적용
				orderDAO.deductStock(directVO);
			}
			
		}
		
		//장바구니 제거
		for(OrderDirectVO odss : orderVO.getOrderDirectVOs()) {
			CartVO cartVO = new CartVO();
			cartVO.setMemberNum((Integer) session.getAttribute("memberNum"));
			cartVO.setDirectCode(odss.getDirectCode());
			
			cartDAO.setDelete(cartVO);
		}
		
		
	}
	
	
}
