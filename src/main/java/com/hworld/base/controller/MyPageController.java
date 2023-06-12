package com.hworld.base.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hworld.base.service.MemberService;
import com.hworld.base.service.MyPageService;
import com.hworld.base.vo.MemberVO;

import lombok.extern.slf4j.Slf4j;



@Controller
@Slf4j
public class MyPageController {
	
	@Autowired
	private MyPageService myPageService;
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private BCryptPasswordEncoder pwEncoder;
	
	
	// 마이페이지 home (요금청구/납부)
	@GetMapping("/myPage")
	public ModelAndView myPage() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/myPage");
		return modelAndView;
	}
	
//	// 가입 정보 변경(Post)
//	@PostMapping("/myPage")
//	public ModelAndView memberUpdate(MemberVO memberVO) throws Exception {
//		
//		ModelAndView modelAndView = new ModelAndView();
//				
//		int result = myPageService.memberUpdate(memberVO);		
//		
//		modelAndView.setViewName("hworld/myPage");
//				
//		return modelAndView;
//	}
	
//	@PostMapping("/myPage")
//	public ModelAndView pwUpdate(MemberVO memberVO) throws Exception {
//		
//		ModelAndView modelAndView = new ModelAndView();
//		
//		String newPw = ""; // 인코딩 전 비밀번호
//		String encodePw = ""; // 인코딩 후 비밀번호
//		
//		newPw = memberVO.getPw(); // 비밀번호 데이터 얻음
//		encodePw = pwEncoder.encode(newPw); // 비밀번호 인코딩
//		memberVO.setPw(encodePw); // 인코딩 된 비밀번호 member 객체에 다시 저장	
//		
//		int result = myPageService.pwUpdate(memberVO);
//		
//		
//		
//		return modelAndView;
//		
//	}
	
	@PostMapping("/myPage")
	public String pwUpdate(MemberVO memberVO){
		int result = myPageService.pwUpdate(memberVO);
		if(result==1) {
			return "redirect:/myPage";
		}
		return "redirect:/myPage";
	}
	
}
