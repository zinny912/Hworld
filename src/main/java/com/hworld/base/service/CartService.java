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
	public int setInsert(CartVO cartVO)throws Exception{
		CartVO checkCart = cartDAO.checkCart(cartVO);
		
		//장바구니에 있는 데이터인지 먼저 확인 
		if(checkCart != null) {
			return 2;
		}
		
		//장바구니 등록 / 에러시 0 반환
		try {
			return cartDAO.setInsert(cartVO);
		} catch (Exception e) {
			return 0;
		}
       		
	}


	//상품 수정 
	public int setUpdate(CartVO cartVO, MultipartFile[] multipartFiles) throws Exception{
		
		return cartDAO.setUpdate(cartVO);
	}

	
	//상품 삭제 
	public int setDelete(CartVO cartVO) throws Exception{
		
		return cartDAO.setDelete(cartVO);
	}

		
	
}
