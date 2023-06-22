package com.hworld.base.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.hworld.base.service.CustomerSupportService;
import com.hworld.base.util.Pager;
import com.hworld.base.vo.BoardVO;
import com.hworld.base.vo.NoticeVO;
import com.hworld.base.vo.QnaVO;

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
	@GetMapping("qna")
	public ModelAndView setQnaInsert(HttpSession session) throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/qna");
		modelAndView.addObject("list", csService.setQnaInsert(session));
		return modelAndView;
	}
	
	@PostMapping("qna")
	public ModelAndView setQnaInsert(QnaVO qnaVO, HttpSession session, MultipartFile file) throws Exception {
		
		ModelAndView mv = new ModelAndView();
		
		String msg = "문의 등록 실패";
		
		int result = csService.setQnaInsert(qnaVO, session, file);
		
		if(result > 0)  {
			msg = "문의 등록 성공";
		}
		
		mv.addObject("result", msg);
		mv.addObject("url", "./qna");
			
		
		mv.setViewName("common/result");
		
		return mv;
		
	}
	
	// 신청서/자료실
	@GetMapping("archive")
	public ModelAndView c4() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/archive");
		return modelAndView;
	}
	
	@GetMapping("prcTest")
	public ModelAndView prcTest() throws Exception {
		ModelAndView mv = new ModelAndView();
		List<Map<String, Object>> mapList =  csService.prcTest();
		for (Map<String, Object> map3 : mapList) {
			
			
			log.error("===============================> {}", map3.toString());
			
		}
		mv.addObject("list", mapList);
		mv.setViewName("hworld/prcTest");
		return mv;
	}
	
	@GetMapping("prcTest2")
	public ModelAndView prcTest2() throws Exception {
		ModelAndView mv = new ModelAndView();
		Map<String, Object> map =  csService.prcTest2();		
			
			
			log.error("===============================> {}", map.toString());
			
		
//		mv.addObject("list", map);
//		mv.setViewName("hworld/prcTest");
		return mv;
	}
}
