package com.hworld.base.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hworld.base.service.MyPageService;
import com.hworld.base.vo.MemberVO;

import lombok.extern.slf4j.Slf4j;



@Controller
@Slf4j
public class MyPageController {
	
	@Autowired
	private MyPageService myPageService;
	
	// 마이페이지 home (요금청구/납부)
	@GetMapping("/myPage")
	public ModelAndView myPage() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/myPage");
		return modelAndView;
	}
	
	@PostMapping("/myPage")
	public ModelAndView memberUpdate(MemberVO memberVO) throws Exception {
		
		ModelAndView modelAndView = new ModelAndView();
				
		int result = myPageService.memberUpdate(memberVO);		
		
		modelAndView.setViewName("hworld/myPage");
				
		return modelAndView;
	}
	
	
}
