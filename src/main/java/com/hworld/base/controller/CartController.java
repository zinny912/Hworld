package com.hworld.base.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hworld.base.service.CartService;
import com.hworld.base.vo.CartVO;
import com.hworld.base.vo.MemberVO;

import lombok.extern.slf4j.Slf4j;



@Controller
@RequestMapping("/cart/*")
@Slf4j
public class CartController {
	
	@Autowired
	private CartService cartService;
	
	
	@PostMapping("add")
	@ResponseBody
	public String setInsert(CartVO cartVO, HttpServletRequest request) throws Exception {
		//로그인 체크 
		HttpSession session = request.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("memberNum");
		if(memberVO==null) {
			return "5";
		}
		
		//카트등록 
		int result = cartService.setInsert(cartVO);
		
		return result+"";
		
		
	}
	
	
	// 장바구니 페이지
	@GetMapping("cartInfo")
	public ModelAndView getCartList(HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberVO memberVO = (MemberVO) session.getAttribute("memberVO");
		Integer memberNum = memberVO.getMemberNum();

		List<CartVO> ar = cartService.getCartList(memberNum);
		System.out.println(ar.get(0).getDirectCode());
		
		mv.addObject("cartInfo", ar);
		mv.setViewName("hworld/cart");
		return mv;
	}
}
