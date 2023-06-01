package com.hworld.base.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.hworld.base.util.Pager;
import com.hworld.base.vo.OrderDirectVO;

@Mapper
public interface OrderDirectDAO {
	
	// 주문내역 리스트 조회 
	public List<OrderDirectVO> getList(Pager pager) throws Exception;
	
	// 주문내역 하나 조회
	public OrderDirectVO getDetail(OrderDirectVO orderDirectVO) throws Exception;
	
	// 주문 추가
	public int setInsert(OrderDirectVO orderDirectVO) throws Exception;
	
		
}
