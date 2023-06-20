package com.hworld.base.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hworld.base.service.MyPageService;
import com.hworld.base.vo.MemberVO;

import lombok.extern.slf4j.Slf4j;



@Controller
@Slf4j
@RequestMapping("/myPage/*")
public class MyPageController {
	
	@Autowired
	private MyPageService myPageService;
	
	
	//마이 페이지 홈
	//필요한 정보들을 미리 다 뿌려둬야 jsp에서 사용가능할듯 함
	@GetMapping("home")
	public ModelAndView myPage() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		
		//기능
		//요금 청구/납부 - 납부내역, 미납내역, 대표회선정보를 나타내야함
		
		
		//가입 정보
		
		//회선 관리
		
		//주문 내역
		
		//문의 내역
		
		//구매 후기
		
		//회원 탈퇴
		
		modelAndView.setViewName("hworld/myPage");
		return modelAndView;
	}
	
	
	//요금 청구/납부 - 즉시 납부 페이지(납부 영수증 표시)
	@GetMapping("instantPay")
	public ModelAndView setPaymentAdd(HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("hworld/invoiceInstantly");
		return mv;
	}
	
	
	
	
	
	// 가입 정보 변경(Post)
//	@PostMapping("myPage")
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
//	public String pwUpdate(HttpServletRequest request, RedirectAttributes redirectAttributes,Model model,HttpSession session,
//	        MemberVO memberVO) {
//	    
//	    try {
//	        myPageService.pwUpdate(memberVO);
//	        redirectAttributes.addFlashAttribute("msg", "수정하였습니다.");
//	        
//	    } catch (Exception e) {
//	        System.out.println(e.toString());
//	        redirectAttributes.addFlashAttribute("msg", "오류가 발생되었습니다.");
//	    }
//	    
//	    return "redirect:/myPage";
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
	
//	@PostMapping("/myPage")
//	public String pwUpdate(MemberVO memberVO){
//		int result = myPageService.pwUpdate(memberVO);
//		if(result==1) {
//			return "redirect:/myPage";
//		}
//		return "redirect:/myPage";
//	}
	
}
