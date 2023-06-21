package com.hworld.base.dao;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.hworld.base.vo.CartVO;
import com.hworld.base.vo.MemberVO;


@Mapper
public interface CartDAO {
    // 카트 리스트 조회
    public List<CartVO> getCartList(Integer memberNum) throws Exception;

    // 카트에 상품 추가
    public int setInsert(CartVO cartVO) throws Exception;

    // 카트 상품 수량 업데이트
    public int setUpdate(CartVO cartVO) throws Exception;

    // 카트 상품 삭제
    public int setDelete(CartVO cartNum) throws Exception;
    
	/* 카트 확인 */
	public CartVO checkCart(CartVO cartVO) throws Exception;

	//카트 갯수 확인 
	public CartVO getCartCount(Integer memberNum);

}
