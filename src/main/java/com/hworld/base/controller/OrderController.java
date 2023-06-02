package com.hworld.base.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller
@RequestMapping("/order/*")
public class OrderController {
	
	@GetMapping("orderSuccess")
	public ModelAndView o1() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/orderSuccess");
		return modelAndView;
	}
	
	@GetMapping("refund")
	public ModelAndView o2() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/refund");
		return modelAndView;
	}
}
