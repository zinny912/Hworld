package com.hworld.base.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/admin/*")
public class AdminController {
	
	// 관리자 홈
	@GetMapping("home")
	public ModelAndView a1() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/home");
		return modelAndView;
	}
	
	// 회원 - 회원 목록
	@GetMapping("memberList")
	public ModelAndView a2() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/memberList");
		return modelAndView;
	}
	
	// 회원 - 회선 목록
	@GetMapping("phoneList")
	public ModelAndView a3() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/phoneList");
		return modelAndView;
	}
	
	// 회원 - 회원 추가
	@GetMapping("memberAdd")
	public ModelAndView a4() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/memberAdd");
		return modelAndView;
	}
	
	// 주문 목록
	@GetMapping("orderList")
	public ModelAndView a5() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/orderList");
		return modelAndView;
	}
	
	// 주문 상세 페이지
	@GetMapping("orderDetail")
	public ModelAndView a6() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/orderDetail");
		return modelAndView;
	}
	
	// 상품 - 상품 목록
	@GetMapping("productList")
	public ModelAndView a7() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/productList");
		return modelAndView;
	}
	
	// 상품 - 상품 리뷰
	@GetMapping("productReview")
	public ModelAndView a8() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/productReview");
		return modelAndView;
	}
	
	// 문의 - 상품 문의
	@GetMapping("productInquiry")
	public ModelAndView a9() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/productInquiry");
		return modelAndView;
	}
	
	// 문의 - 일반 문의
	@GetMapping("generalInquiry")
	public ModelAndView a10() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/generalInquiry");
		return modelAndView;
	}
	
	// 문의 - 일반 문의 상세 페이지
	@GetMapping("generalInquiryDetail")
	public ModelAndView a11() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/generalInquiryDetail");
		return modelAndView;
	}
	
	// 납부 - 납부 목록
	@GetMapping("paymentList")
	public ModelAndView a12() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/paymentList");
		return modelAndView;
	}
	
	// 납부 - 납부 상세 페이지
	@GetMapping("paymentDetail")
	public ModelAndView a13() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/paymentDetail");
		return modelAndView;
	}
	
	// 납부 - 미납 목록
	@GetMapping("unpaidList")
	public ModelAndView a14() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/unpaidList");
		return modelAndView;
	}
	
	// 프로필 설정 페이지
	@GetMapping("profileSetting")
	public ModelAndView a15() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/profileSetting");
		return modelAndView;
	}
}
