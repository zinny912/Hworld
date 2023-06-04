package com.hworld.base.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping
public class ApplicationController {
	//가입 신청서 관련 controller
	
	//신청서 페이지
	@GetMapping("formApp")
	public ModelAndView m15(String name) throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/applicationForm");
		log.info("{}", name);
		return modelAndView;
	}

}
