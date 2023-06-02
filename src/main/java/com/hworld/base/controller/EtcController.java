package com.hworld.base.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("/etc/*")
public class EtcController {
	
	// 대리점 찾기
	@GetMapping("agencyFind")
	public ModelAndView d1() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/agencyFind");
		return modelAndView;
	}
}
