package com.hworld.base.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("/customerSupport/*")
public class CustomerSupportController {
	
	// 고객지원
	@GetMapping("")
	public ModelAndView c1() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/customerSupport");
		return modelAndView;
	}
	
	// 고객지원
	@GetMapping("notice")
	public ModelAndView c2() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/notice");
		return modelAndView;
	}
	
	// 1:1 문의
	@GetMapping("1vs1Inquiry")
	public ModelAndView c3() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/1vs1Inquiry");
		return modelAndView;
	}
	
	// 신청서/자료실
	@GetMapping("applicationForm")
	public ModelAndView c4() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/applicationForm");
		return modelAndView;
	}
}
