package com.hworld.base.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/event/*")
public class EventController {
	
	// event - present
	@GetMapping("present")
	public ModelAndView e1() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/eventPresent");
		return modelAndView;
	}
	
	// event - past
	@GetMapping("past")
	public ModelAndView e2() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/eventPresent");
		return modelAndView;
	}

}
