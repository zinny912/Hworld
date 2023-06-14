package com.hworld.base.controller;

import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hworld.base.service.MemberService;
import com.hworld.base.service.OrderService;
import com.hworld.base.vo.MemberVO;
import com.hworld.base.vo.OrderDirectVO;
import com.hworld.base.vo.OrderPageVO;
import com.hworld.base.vo.OrderVO;



@Controller
public class OrderController {
	
	@Autowired
	private OrderService orderService;
	@Autowired
	private MemberService memberService;
	
	@PostMapping("/order/{memberNum}")
	public ModelAndView setOrderInsert(@PathVariable("memberNum") Integer memberNum, OrderPageVO orderPageVO, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.addObject("orderList", orderService.getDirectDetail(orderPageVO.getOrders()));
		Enumeration<String> attributeNames = session.getAttributeNames();
		while (attributeNames.hasMoreElements()) {
		    String attributeName = attributeNames.nextElement();
		    Object attributeValue = session.getAttribute(attributeName);
		    mv.addObject(attributeName, attributeValue);
		}

		
		mv.setViewName("/order");
		return mv;
	}
	
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
