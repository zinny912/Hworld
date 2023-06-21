package com.hworld.base.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	public ModelAndView setInsert(CartVO cartVO, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();

		HttpSession session = request.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("memberVO");
		
	    cartService.setInsert(cartVO, memberVO);
	    
		List<CartVO> ar = cartService.getCartList(memberVO.getMemberNum());
		session.setAttribute("cartInfo", ar);
		cartVO = cartService.getCartCount(memberVO.getMemberNum());
		session.setAttribute("cartCount", cartVO);


	    mv.setViewName("redirect:/cart/cartInfo");

		return mv;

	}
	
	
	// 장바구니 페이지
	@GetMapping("cartInfo")
	public ModelAndView getCartList(HttpSession session, CartVO cartVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberVO memberVO = (MemberVO) session.getAttribute("memberVO");
		Integer memberNum = memberVO.getMemberNum();

		List<CartVO> ar = cartService.getCartList(memberNum);
		cartVO = cartService.getCartCount(memberVO.getMemberNum());
		session.setAttribute("cartCount", cartVO);

	    if (ar.isEmpty()) {
	        // 카트 리스트가 비어있을 경우, 알람창을 사용하여 메시지를 알림
	        
	        mv.setViewName("hworld/cart"); // 빈 카트를 보여주는 뷰 페이지
	    } else {
	        // 카트 리스트가 비어있지 않을 경우, 정상적인 뷰 페이지로 이동
	        mv.addObject("cartInfo", ar);
	        mv.setViewName("hworld/cart");
	    }

		return mv;
	}
	
	
	@PostMapping("cartDelete")
	@ResponseBody
	public String cartDelete(@ModelAttribute("cartVO") CartVO cartVO, HttpSession session) throws Exception {
	    MemberVO memberVO = (MemberVO) session.getAttribute("memberVO");
	    cartVO.setMemberNum(memberVO.getMemberNum());
	    int deleteResult = cartService.setDelete(cartVO);

	    if (deleteResult == 1) {
	        return "success"; // Deletion succeeded
	    } else {
	        return "failure"; // Deletion failed
	    }
	}

	
}
