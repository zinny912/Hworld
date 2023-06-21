package com.hworld.base.service;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.naming.spi.DirStateFactory.Result;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.hworld.base.dao.CartDAO;
import com.hworld.base.dao.DirectDAO;
import com.hworld.base.dao.OrderDAO;
import com.hworld.base.util.FileManager;
import com.hworld.base.util.Pager;
import com.hworld.base.vo.CartVO;
import com.hworld.base.vo.DirectVO;
import com.hworld.base.vo.MemberVO;
import com.hworld.base.vo.PlanVO;
import com.hworld.base.vo.ReviewVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class CartService {

	@Autowired
	private DirectDAO directDAO;
	@Autowired
	private CartDAO cartDAO;


	
	//장바구니 정보 리스트
	public List<CartVO> getCartList(Integer memberNum) throws Exception{
		List<CartVO> cartVOs = cartDAO.getCartList(memberNum);
		log.error("{}", memberNum);
		
//		for(CartVO cartVO : cartVOs) {
//			cartVO.initTotal();
//		}
		
		return cartVOs;
	}
	

		
	//장바구니에 상품 추가 
	public int setInsert(CartVO cartVO, MemberVO memberVO)throws Exception{
		
		List<CartVO> ar = new ArrayList<>();
		
		String []directCode = cartVO.getDirectCode().split(",");
		String []orderAmount = cartVO.getCartAmount().split(",");
		
		for(int i = 0 ; i < directCode.length ; i++) {
			CartVO vo = new CartVO();

			vo.setDirectCode(directCode[i]);
			vo.setCartAmount(orderAmount[i]);
			vo.setMemberNum(memberVO.getMemberNum());
			CartVO checkCart = cartDAO.checkCart(vo);
			if(checkCart == null) {
				ar.add(vo);
				cartDAO.setInsert(vo);
			}		
		}
		
		return 5;
		
       		
	}


	//상품 수정 
	public int setUpdate(CartVO cartVO, MultipartFile[] multipartFiles) throws Exception{
		
		return cartDAO.setUpdate(cartVO);
	}

	
	// 상품 삭제
	public int setDelete(CartVO cartVO) throws Exception {
	    try {
	        cartDAO.setDelete(cartVO);
	        return 1; // Deletion successful
	    } catch (Exception e) {
	        e.printStackTrace();
	        return 0; // Deletion failed
	    }
	}



	public CartVO getCartCount(Integer memberNum) {
		// TODO Auto-generated method stub
		return cartDAO.getCartCount(memberNum);
	}


		
	
}
