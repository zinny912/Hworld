package com.hworld.base.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class CartController {
	// 장바구니 페이지
	@GetMapping("/cart")
	public ModelAndView refund() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/cart");
		return modelAndView;
	}
}
