package com.hworld.base.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hworld.base.service.AdminService;
import com.hworld.base.util.Pager;
import com.hworld.base.vo.MemberVO;

@Controller
@RequestMapping("/admin/*")
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	// 관리자 홈
	@GetMapping("home")
	public ModelAndView home() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/home");
		return modelAndView;
	}
	
	// 회원 - 회원 목록
	@GetMapping("memberList")
	public ModelAndView memberList(Pager pager) throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		List<MemberVO> list = adminService.memberList(pager);
		modelAndView.addObject("list", list);
		modelAndView.setViewName("admin/memberList");
		return modelAndView;
	}
	
	// 회원 - 회선 목록
	@GetMapping("phoneList")
	public ModelAndView phoneList() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/phoneList");
		return modelAndView;
	}
	
	// 회원 - 회원 추가
	@GetMapping("memberAdd")
	public ModelAndView memberAdd() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/memberAdd");
		return modelAndView;
	}
	
	// 주문 목록
	@GetMapping("orderList")
	public ModelAndView orderList() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/orderList");
		return modelAndView;
	}
	
	// 주문 상세 페이지
	@GetMapping("orderDetail")
	public ModelAndView orderDetail() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/orderDetail");
		return modelAndView;
	}
	
	// 상품 - 상품 목록
	@GetMapping("productList")
	public ModelAndView productList() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/productList");
		return modelAndView;
	}
	
	// 상품 - 상품 리뷰
	@GetMapping("productReview")
	public ModelAndView productReview() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/productReview");
		return modelAndView;
	}
	
	// 문의 - 상품 문의
	@GetMapping("productInquiry")
	public ModelAndView productInquiry() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/productInquiry");
		return modelAndView;
	}
	
	// 문의 - 일반 문의
	@GetMapping("generalInquiry")
	public ModelAndView generalInquiry() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/generalInquiry");
		return modelAndView;
	}
	
	// 문의 - 일반 문의 상세 페이지
	@GetMapping("generalInquiryDetail")
	public ModelAndView generalInquiryDetail() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/generalInquiryDetail");
		return modelAndView;
	}
	
	// 납부 - 납부 목록
	@GetMapping("paymentList")
	public ModelAndView paymentList() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/paymentList");
		return modelAndView;
	}
	
	// 납부 - 납부 상세 페이지
	@GetMapping("paymentDetail")
	public ModelAndView paymentDetail() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/paymentDetail");
		return modelAndView;
	}
	
	// 납부 - 미납 목록
	@GetMapping("unpaidList")
	public ModelAndView unpaidList() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/unpaidList");
		return modelAndView;
	}
	
	// 프로필 설정 페이지
	@GetMapping("profileSetting")
	public ModelAndView profileSetting() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/profileSetting");
		return modelAndView;
	}
}
