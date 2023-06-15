package com.hworld.base.dao;

import static org.junit.jupiter.api.Assertions.*;

import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.hworld.base.dao.MemberDAO;
import com.hworld.base.vo.CartVO;
import com.hworld.base.vo.MemberVO;

import lombok.extern.slf4j.Slf4j;

@SpringBootTest
@Slf4j
class CartDAOTest {
	
	@Autowired
	private CartDAO cartDAO;
//	
//	@Test
//	public void addCart() throws Exception {
//		int memberNum = 55;
//		String directCode  = "P05";
//		int cartAmount = 2;
//		
//		CartVO cart = new CartVO();
//		cart.setMemberNum(memberNum);
//		cart.setDirectCode(directCode);
//		cart.setCartAmount(cartAmount);
//		
//		int result = 0;
//		result = cartDAO.setInsert(cart);
//		
//		System.out.println("결과 : " + result);
//		
//	}	
//
//	
//	/* 카트 삭제 */
//
//	@Test
//	public void deleteCartTest() {
//		CartVO cartNum = 1;
//		
//		cartDAO.setDelete(cartNum);
//
//	
//	/* 카트 수량 수정 */

//	@Test
//	public void modifyCartTest() {
//		ica = ;
//		int count = 5;
//		
//		CartVO cart = new CartDTO();
//		cart.setCartId(cartId);
//		cart.setBookCount(count);
//		
//		mapper.modifyCount(cart);
//		
//	}
//
//	
//	/* 카트 목록 */ 
//
//	@Test
//	public void getCartTest() {
//		String memberId = "admin";
//		
//		
//		List<CartDTO> list = mapper.getCart(memberId);
//		for(CartDTO cart : list) {
//			System.out.println(cart);
//			cart.initSaleTotal();
//			System.out.println("init cart : " + cart);
//		}
//		
//		
//	
//	}
//	*/		
//	/* 카트 확인 */
//
//	@Test
//	public void checkCartTest() {
//		
//		String memberId = "admin";
//		int bookId = 71;
//		
//		CartDTO cart = new CartDTO();
//		cart.setMemberId(memberId);
//		cart.setBookId(bookId);
//		
//		CartDTO resutlCart = mapper.checkCart(cart);
//		System.out.println("결과 : " + resutlCart);
//		
//	}
//	
}
