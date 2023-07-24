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

import com.hworld.base.dao.DirectDAO;
import com.hworld.base.service.DirectService;
import com.hworld.base.service.MemberService;
import com.hworld.base.service.OrderService;
import com.hworld.base.vo.MemberVO;
import com.hworld.base.vo.OrderDirectVO;
import com.hworld.base.vo.OrderVO;
import com.hworld.base.vo.PayVO;

import lombok.extern.slf4j.Slf4j;


@Slf4j
@Controller
public class OrderController {
	
	@Autowired
	private OrderService orderService;
	@Autowired
	private MemberService memberService;
	@Autowired
	private DirectService directService;
	
	
	@PostMapping("/orderInfo")
	public ModelAndView getOrderInfo(OrderDirectVO orderDirectVO, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<OrderDirectVO> ar = orderService.getOrderInfo(orderDirectVO);

		MemberVO memberVO = (MemberVO) session.getAttribute("memberVO");
		
		mv.setViewName("hworld/accessoryOrder");
		mv.addObject("memberVO", memberVO);
		mv.addObject("orderList", ar);
		return mv;
	}

	
	@PostMapping("/order")
	public ModelAndView getOrderInfo(OrderDirectVO orderDirectVO, MemberVO memberVO, OrderVO orderVO)throws Exception{
		ModelAndView mv = new ModelAndView();


		orderService.order(orderDirectVO, memberVO, orderVO);
		List<OrderDirectVO> ar = orderService.getOrderInfo(orderDirectVO);
		
		mv.setViewName("hworld/pay");
		mv.addObject("orderList", ar);
		mv.addObject("memberVO", memberVO);
		mv.addObject("orderInfo", orderVO);
		
		return mv;
	}

	
	@PostMapping("/payment")
	public ModelAndView setOrderPayment(OrderDirectVO orderDirectVO, OrderVO orderVO, PayVO payVO, MemberVO memberVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		
		payVO.setMemberNum(orderVO.getMemberNum());
		payVO.setOrderFinalPrice(payVO.getOrderFinalPrice());
		payVO.setOrderNum(orderVO.getOrderNum());
	
		
		
		
		orderService.setOrderPayment(payVO);
		
		List<OrderDirectVO> ar = orderService.getOrderInfo(orderDirectVO);
		mv.setViewName("hworld/orderSuccess");
		mv.addObject("orderList", ar);
		mv.addObject("memberVO", memberVO);
		mv.addObject("orderInfo", orderVO);
		
		return mv;
		
	}
//	
//	@GetMapping("refund")
//	public ModelAndView o2() throws Exception{
//		ModelAndView modelAndView = new ModelAndView();
//		modelAndView.setViewName("hworld/refund");
//		return modelAndView;
//	}
}