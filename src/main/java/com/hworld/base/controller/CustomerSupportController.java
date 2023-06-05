package com.hworld.base.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hworld.base.service.CustomerSupportService;
import com.hworld.base.util.Pager;
import com.hworld.base.vo.BoardVO;
import com.hworld.base.vo.NoticeVO;

import lombok.extern.slf4j.Slf4j;


@Controller
@RequestMapping("/cs/*")
@Slf4j
public class CustomerSupportController {
	
	@Autowired
	private CustomerSupportService csService;
	
	// 고객지원
	@GetMapping("home")
	public ModelAndView c1() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/customerSupport");
		return modelAndView;
	}
	
	// 공지사항
	@GetMapping("notice")
	public ModelAndView getNoticeList(Pager pager) throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		
		List<BoardVO> list = csService.getNoticeList(pager);
		log.info("공지사항 리스트 사이즈 =====================> {}", list.size());
		modelAndView.setViewName("hworld/notice");
		modelAndView.addObject("list", list);
		return modelAndView;
	}
	
	
	// 1:1 문의
	@GetMapping("inquiry")
	public ModelAndView c3() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/inquiry");
		return modelAndView;
	}
	
	// 신청서/자료실
	@GetMapping("archive")
	public ModelAndView c4() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/archive");
		return modelAndView;
	}
}
