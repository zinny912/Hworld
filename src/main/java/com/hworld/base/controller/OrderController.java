package com.hworld.base.controller;

import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hworld.base.service.MemberService;
import com.hworld.base.service.OrderService;
import com.hworld.base.vo.MemberVO;
import com.hworld.base.vo.OrderDirectVO;
import com.hworld.base.vo.OrderPageDirectVO;
import com.hworld.base.vo.OrderPageVO;
import com.hworld.base.vo.OrderVO;

import lombok.extern.slf4j.Slf4j;


@Slf4j
@Controller
public class OrderController {
	
	@Autowired
	private OrderService orderService;
	@Autowired
	private MemberService memberService;
	
	
	@PostMapping("/order/{memberNum}")
	public ResponseEntity<String> orderItems(@PathVariable String memberNum, @RequestBody List<OrderPageDirectVO> orderItems) {
	  // memberNum과 orderItems를 활용하여 필요한 처리 수행
	  // orderItems는 선택된 상품들의 정보를 담고 있는 JSON 타입 배열입니다.
	  // 각 항목에 접근하여 필요한 작업을 수행하면 됩니다.

	  // 예시: orderItems의 각 항목을 출력하는 예제
	  for (OrderPageDirectVO orderItem : orderItems) {
	    System.out.println("directCode: " + orderItem.getDirectCode());
	    System.out.println("orderAmount: " + orderItem.getOrderAmount());
	    System.out.println("totalPrice: " + orderItem.getTotalPrice());
	  }

	  // 처리 결과에 따라 적절한 응답을 반환
	  return ResponseEntity.ok("주문이 완료되었습니다.");
	}


	
	
	
	
//	@PostMapping("/order/{memberNum}")
//	public ModelAndView setOrderInsert(@PathVariable("memberNum") String memberNum, OrderPageVO orderPageVO, HttpSession session) throws Exception{
//		ModelAndView mv = new ModelAndView();
//		log.error("{}<==========",orderPageVO.getOrders());
//		mv.addObject("orderList", orderService.getDirectDetail(orderPageVO.getOrders()));
//		
//		Enumeration<String> attributeNames = session.getAttributeNames();
//		while (attributeNames.hasMoreElements()) {
//		    String attributeName = attributeNames.nextElement();
//		    Object attributeValue = session.getAttribute(attributeName);
//		    mv.addObject(attributeName, attributeValue);
//		}
//
//		
//		mv.setViewName("/order");
//		return mv;
//	}
	
	@PostMapping("/order")
	public ModelAndView setOrderInsert(OrderVO orderVO, HttpSession session)throws Exception{
		ModelAndView mv = new ModelAndView();
		
		orderService.order(orderVO, session);
		
		mv.setViewName("/orderSuccess");
		return mv;
	}
	
	
	
	
	@GetMapping("/order/orderSuccess")
	public ModelAndView getOrderDetail(OrderVO orderVO, OrderDirectVO orderDirectVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("hworld/orderSuccess");
		return mv;
	}

	
	@GetMapping("refund")
	public ModelAndView o2() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/refund");
		return modelAndView;
	}
}
