package com.hworld.base.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.hworld.base.service.MemberService;
import com.hworld.base.vo.MemberVO;

import lombok.extern.slf4j.Slf4j;

@RestController
@Slf4j
@RequestMapping("/member/*")
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@GetMapping("/")
	public ModelAndView getMemberList() throws Exception{
		ModelAndView mv = new ModelAndView();
		List<MemberVO> ar = new ArrayList<>();
		
		ar = memberService.getMemberList();
		
		mv.addObject("list", ar);
		mv.setViewName("index");
		return mv;
	}
	
}
