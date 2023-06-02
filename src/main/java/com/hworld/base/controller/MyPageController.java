package com.hworld.base.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class MyPageController {
	
	// 마이페이지 home (요금청구/납부)
	@GetMapping("/myPage")
	public ModelAndView m1() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/myPage");
		return modelAndView;
	}
	
	
}
