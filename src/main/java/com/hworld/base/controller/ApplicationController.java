package com.hworld.base.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.hworld.base.service.ApplicationService;
import com.hworld.base.vo.ApplicationVO;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/form/*")
public class ApplicationController {
	//가입 신청서 관련 controller
	
	@Autowired
	private ApplicationService applicationService;
	
	//신청서 페이지 들어가는 것
	@GetMapping("application")
	public ModelAndView setFormAdd() throws Exception{
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("hworld/applicationForm");
		return mv;
	}
	
	//신청서 db insert
	@PostMapping("application")
	public ModelAndView setFormAdd(ApplicationVO applicationVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		//insert 작업
		//하기전에 parameter 받아오기
		System.out.println(applicationVO.getName());
		log.warn("=============> name : {} ", applicationVO.getName());
		log.warn("=============> rrnl : {} ", applicationVO.getRrnl());
		log.warn("=============> address3 : {} ", applicationVO.getAddress3());
		log.warn("=============> disKind : {} ", applicationVO.getDisKind());
		log.warn("=============> directName : {} ", applicationVO.getDirectName());
		
		int result = applicationService.setFormAdd(applicationVO);
		log.warn("=============> result : {} ", result);
		
		
		mv.setViewName("hworld/applicationForm");
		//성공하면 결과에 따라 alert띄우기 해도 될듯. 나중에 index 등으로 바꾸기
		return mv;
	}

}
