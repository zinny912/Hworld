package com.hworld.base.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.hworld.base.util.Pager;
import com.hworld.base.vo.DirectVO;
import com.hworld.base.vo.MemberVO;
import com.hworld.base.vo.OrderDirectVO;
import com.hworld.base.vo.OrderPageDirectVO;
import com.hworld.base.vo.OrderVO;

@Mapper
public interface OrderDAO {
    
//
//     주문 정보 조회 
    public List<OrderPageDirectVO> getDirectDetail(List<OrderPageDirectVO> orderPageDirectVOs) throws Exception;

    //주문 
    public void order(OrderVO orderVO) throws Exception;
    
    // 주문 결제
    public int orderPayment(OrderVO orderVO) throws Exception;
    
    // 주문 상품 정보(주문 페이지)
    public OrderPageDirectVO getDirectDetail(String directCode);
    
    //주문 상품 정보(주문 처리)
    public OrderDirectVO getOrderInfo(String directCode);

    // 주문 테이블 등록
    public int setInsert(OrderVO orderVO);
    
    // 주문 아이템 테이블 등록
    public int setODInsert(OrderDirectVO orderDirectVO);
    
    //주문 재고차감 
    public Integer deductStock(DirectVO directVO);
        
    

}
