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
		
		for(String str : directCode) {
			log.error(" >>>>>>>>>>>>>>>>>>>>>> {} ", str);
		}
		
		
		return ar;
		
		
		
//		List<OrderPageDirectVO> result = new ArrayList<>();
//		
//		for(OrderPageDirectVO opds : orderPageDirectVOs) {
////			log.error(opds.getDirectCode().toString());
//			
//			OrderPageDirectVO getDirectDetail = orderDAO.getDirectDetail(opds.getDirectCode());
//			
//			getDirectDetail.setOrderAmount(opds.getOrderAmount());
//			
//			result.add(getDirectDetail);
//			
//		}
//		return result;
	}
	
	//주문한 정보를 db에 넣는거
	public void order(OrderVO orderVO, HttpSession session)throws Exception{
		//회원 정보 
		Object member = session.getAttribute("memberNum");
		//주문 정보
		List<OrderDirectVO> ods = new ArrayList<>();
		for(OrderDirectVO odss : orderVO.getOrderDirectVOs()) {
			OrderDirectVO orderDirectVO = orderDAO.getOrderInfo(odss.getDirectCode());
			orderDirectVO.setOrderAmount(odss.getOrderAmount());
			//orderDirectVO.initTotal();
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
//		
//		/* 재고 변동 적용 */
//		for(OrderDirectVO odss : orderVO.getOrderDirectVOs()) {
//			//변경 재고 값 구하기
//			List<DirectVO> directVOList = directDAO.getDetail(odss.getDirectCode());
//			for(DirectVO directVO : directVOList) {
//				directVO.setDirectStock(directVO.getDirectStock()-odss.getOrderAmount());
//				//변동 값 DB적용
//				orderDAO.deductStock(directVO);
//			}
//			
//		}
//		
//		//장바구니 제거
//		for(OrderDirectVO odss : orderVO.getOrderDirectVOs()) {
//			CartVO cartVO = new CartVO();
//			cartVO.setMemberNum((Integer) session.getAttribute("memberNum"));
//			cartVO.setDirectCode(odss.getDirectCode());
//			
//			cartDAO.setDelete(cartVO);
//		}
//		
		
	}
	
	
}
