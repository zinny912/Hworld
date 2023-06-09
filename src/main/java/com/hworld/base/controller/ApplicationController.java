package com.hworld.base.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.hworld.base.service.ApplicationService;
import com.hworld.base.vo.ApplicationVO;
import com.hworld.base.vo.PlanVO;

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
		
		//검증을 위한 빈 application 객체 보내기
		mv.addObject(new ApplicationVO());
		
		//페이지 로딩시 필요한 정보
		//요금제 정보 호출, 담기
		//나중에 고칠때 각각의 요금제 List들을 existList에 넣어서 jsp로 보내고 jsp 수정해보기.
		List<PlanVO> existPlanList = applicationService.getExistPlanList();
		List<PlanVO> allPlanList = applicationService.getPlanList();

		List<PlanVO> gList = new ArrayList<>();
		List<PlanVO> sList = new ArrayList<>();
		List<PlanVO> tList = new ArrayList<>();
		List<PlanVO> zList = new ArrayList<>();
		List<PlanVO> wList = new ArrayList<>();
		List<PlanVO> hList = new ArrayList<>();

		//패턴별로 리스트를 분류
		for (PlanVO plan : allPlanList) {
		    String planNum = plan.getPlanNum();
		    if (planNum.startsWith("G")) {
		        gList.add(plan);
		    } else if (planNum.startsWith("S")) {
		        sList.add(plan);
		    } else if (planNum.startsWith("T")) {
		        tList.add(plan);
		    } else if (planNum.startsWith("Z")) {
		        zList.add(plan);
		    } else if (planNum.startsWith("W")) {
		        wList.add(plan);
		    } else if (planNum.startsWith("H")) {
		        hList.add(plan);
		    }
		}
		
		mv.addObject("existList", existPlanList);
		mv.addObject("gList", gList);
		mv.addObject("sList", sList);
		mv.addObject("tList", tList);
		mv.addObject("zList", zList);
		mv.addObject("wList", wList);
		mv.addObject("hList", hList);
		
		mv.setViewName("hworld/applicationForm");
		return mv;
	}
	
	
	//신청서 db insert
	@PostMapping("application")
	public ModelAndView setFormAdd(@Valid ApplicationVO applicationVO, BindingResult bindingResult) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		if(bindingResult.hasErrors()) {
			log.warn("========== 에러가 발생함 ==========");
			mv.setViewName("hworld/applicationForm");
		}
		
		//insert 작업
		
		int result = applicationService.setFormAdd(applicationVO);
		log.warn("=============> result : {} ", result);
		
		
		mv.setViewName("hworld/applicationForm");
		//성공하면 결과에 따라 alert띄우기 해도 될듯. 나중에 index 등으로 바꾸기
		return mv;
	}

}
