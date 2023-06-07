package com.hworld.base.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hworld.base.dao.PlanDAO;
import com.hworld.base.service.PlanService;
import com.hworld.base.util.Pager;
import com.hworld.base.vo.PlanVO;



@Controller
@RequestMapping("/plan/*")
public class PlanController {
	
	@Autowired
	private PlanService planService;
	
	
	// 요금제&부가서비스 리스트
	@GetMapping("planList")
	public ModelAndView getList() throws Exception{
		ModelAndView mv= new ModelAndView();
		List<PlanVO> planList = planService.getPlanList();
//		List<PlanVO> generalList = planService.getGeneralList();
//        List<PlanVO> seniorList = planService.getSeniorList();
//        List<PlanVO> teenList = planService.getTeenList();
//        List<PlanVO> zemList = planService.getZemList();
//        List<PlanVO> heroList = planService.getHeroList();
//        List<PlanVO> welfareList = planService.getWelfareList();
//        
//		
//		mv.addObject("generalList", generalList);
//		mv.addObject("seniorList",  seniorList);
//		mv.addObject("teenList",  teenList);
//		mv.addObject("zemList",  zemList);
//		mv.addObject("heroList",  heroList);
//		mv.addObject("welfareList",  welfareList);
		mv.addObject("planList",planList);
		mv.setViewName("hworld/planList");
		return mv;
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
