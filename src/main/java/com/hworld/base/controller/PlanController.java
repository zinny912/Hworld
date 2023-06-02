package com.hworld.base.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller
@RequestMapping("/plan/*")
public class PlanController {
	
	// 요금제&부가서비스 리스트
	@GetMapping("planList")
	public ModelAndView e1() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/planList");
		return modelAndView;
	}
	
	// 요금제&부가서비스 리스트
	@GetMapping("planUpdate")
	public ModelAndView e2() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/planUpdate");
		return modelAndView;
	}
	
	// 부가서비스 디테일 > 신청하기
	@GetMapping("ePlanApply")
	public ModelAndView e3() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/ePlanApply");
		return modelAndView;
	}
	
	// 부가서비스 추가
	@GetMapping("ePlanAdd")
	public ModelAndView e4() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/ePlanAdd");
		return modelAndView;
	}
	
	// 부가서비스 디테일
	@GetMapping("ePlanDetail")
	public ModelAndView e5() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/ePlanDetail");
		return modelAndView;
	}
	
	// 부가서비스 수정
	@GetMapping("ePlanUpdate")
	public ModelAndView e6() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/ePlanUpdate");
		return modelAndView;
	}
	
	// 부가서비스 디테일 >> 신청 성공
	@GetMapping("planResult")
	public ModelAndView e7() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/planResult");
		return modelAndView;
	}
	
	// 요금제 디테일 > 요금제 변경 확인
	@GetMapping("planChange")
	public ModelAndView e8() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/planChange");
		return modelAndView;
	}
}
