package com.hworld.base.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hworld.base.service.OrderService;
import com.hworld.base.vo.OrderVO;



@Controller
@RequestMapping("/order/*")
public class OrderController {
	
	@Autowired
	private OrderService orderService;
	
	@PostMapping("orderSuccess")
	public ModelAndView o1(OrderVO orderVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		int result = orderService.setInsert(orderVO);
		
		mv.addObject("orderVO", result);
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
