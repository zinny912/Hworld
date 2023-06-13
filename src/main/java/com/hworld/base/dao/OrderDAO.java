package com.hworld.base.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.hworld.base.util.Pager;
import com.hworld.base.vo.DirectVO;
import com.hworld.base.vo.MemberVO;
import com.hworld.base.vo.OrderDirectVO;
import com.hworld.base.vo.OrderVO;

@Mapper
public interface OrderDAO {
    

    // 주문 리스트 조회
    public List<OrderVO> getList(MemberVO memberVO) throws Exception;

    // 주문 하나 조회
    public List<OrderDirectVO> getDetail(OrderVO orderVO, MemberVO memberVO) throws Exception;

    // 주문 등록
    public int setInsert(OrderDirectVO orderDirectVO, MemberVO memberVO) throws Exception;

    // 주문 수정
    public int setUpdate(OrderVO orderVO) throws Exception;



}
