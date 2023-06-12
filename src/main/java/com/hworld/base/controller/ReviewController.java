package com.hworld.base.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class ReviewController {
	
	// 마이페이지 home (요금청구/납부)
	@GetMapping("/")
	public ModelAndView getReview() throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		
		mv.setViewName("hworld/myPage");
		return mv;
	}
	
	
}
