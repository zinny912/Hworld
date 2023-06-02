package com.hworld.base.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hworld.base.service.MemberService;
import com.hworld.base.vo.MemberVO;


@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	public ModelAndView getMemberList() throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<MemberVO> ar = memberService.getMemberList();
		
		mv.addObject("list", ar);
		mv.setViewName("index");
		return mv;
	}
	
	// 로그인 페이지
	@GetMapping("login")
	public ModelAndView m1() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/login");
		return modelAndView;
	}
	// 로그인 했을 때 대표 회선 정보가 없을 때 뜨는 페이지
	@GetMapping("loginFirst")
	public ModelAndView m2() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/loginFirst");
		return modelAndView;
	}
	// 계정 활성화 페이지
	@GetMapping("loginDormantAccount")
	public ModelAndView m3() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/loginDormantAccount");
		return modelAndView;
	}
	
	// 계정 활성화 페이지 - 등록된 이메일로 임시 비밀번호 발송했다는 페이지
	@GetMapping("loginDormantAccountResult")
	public ModelAndView m4() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/loginDormantAccountResult");
		return modelAndView;
	}
	
	// 계정정보 찾기 페이지
	@GetMapping("forgot")
	public ModelAndView m5() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/forgot");
		return modelAndView;
	}
	
	// 아이디 찾기 페이지
	@GetMapping("forgotId")
	public ModelAndView m6() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/forgotId");
		return modelAndView;
	}
	
	// 비밀번호 찾기 페이지
	@GetMapping("forgotPw")
	public ModelAndView m7() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/forgotPw");
		return modelAndView;
	}
	
	// 조회결과 페이지
	@GetMapping("forgotResult")
	public ModelAndView m8() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/forgotResult");
		return modelAndView;
	}
	
	// 회원가입 페이지
	@GetMapping("signUp")
	public ModelAndView m9() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/signUp");
		return modelAndView;
	}
	
	// 회선확인(명칭 확정 필요) 페이지
	@GetMapping("signUpPrecheck")
	public ModelAndView m10() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/signUpPrecheck");
		return modelAndView;
	}
	
	// 회선확인 - 회선이 없는 사용자가 가입 시도시 뜨는 페이지
	@GetMapping("signUpFirst")
	public ModelAndView m11() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/signUpFirst");
		return modelAndView;
	}
	
	// 회원가입 완료 페이지
	@GetMapping("signUpSuccess")
	public ModelAndView m12() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/signUpSuccess");
		return modelAndView;
	}
	
}
