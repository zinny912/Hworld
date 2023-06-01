package com.hworld.base.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hworld.base.service.DirectService;
import com.hworld.base.util.Pager;
import com.hworld.base.vo.DirectVO;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/direct/*")
@Slf4j
public class DirectController {
	
	@Autowired
	private DirectService directService;

	//상품 리스트 
	@GetMapping("list")
	@ResponseBody
	public ModelAndView getList(ModelAndView mv , Pager pager) throws Exception{
//		List<DirectVO>ar = directService.getList(pager);
//		mv.addObject("list", ar);
		mv.setViewName("index");

		return mv;
	}
	//상품 상세페이지 
	@GetMapping("detail")
	public ModelAndView getDetail(DirectVO directVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		directVO = directService.getDetail(directVO);
		
		mv.addObject("directVO", directVO);
		mv.setViewName("direct/detail");
		
		return mv;
		
	}
	//상품 추가 
	@GetMapping("add")
	public ModelAndView setInsert(@ModelAttribute DirectVO directVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("direct/add");
		return mv;
	}
	//상품 추가 
	@PostMapping("add")
	public ModelAndView setInsert(@Valid DirectVO directVO, BindingResult bindingResult)throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = directService.setInsert(directVO);
		mv.setViewName("redirect:./list");
		return mv;
	}
	//상품 삭제 
	@PostMapping("delete")
	public ModelAndView setDelete(DirectVO directVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = directService.setDelete(directVO);
		mv.setViewName("redirect:./list");
		return mv;
	}
	
	
	
}
