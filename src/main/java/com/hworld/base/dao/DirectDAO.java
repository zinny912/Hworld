package com.hworld.base.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.hworld.base.util.Pager;
import com.hworld.base.vo.DirectVO;


@Mapper
public interface DirectDAO {
		
	//상품 수
	public Long getTotalCount(Pager pager) throws Exception;
	
	//상품 리스트 조회 
	public List<DirectVO> getList(Pager pager) throws Exception;
//	public DirectVO getPriceList(DirectVO directVO) throws Exception;

	//상품 sorting 
	public List<DirectVO> getListByPriceH(Pager pager) throws Exception;
	public List<DirectVO> getListByPriceL(Pager pager) throws Exception;
	
	public List<Map<String, Object>> getFileList() throws Exception;
	
	//상품 하나 조회
	public DirectVO getDetail(DirectVO directVO) throws Exception;

	//상품파일 조회 
	public DirectVO getFileDetail(DirectVO directVO) throws Exception;
	
	//생성된 제품코드로 가격, 재고 조회해오기 
	public DirectVO getPrice(String directCode) throws Exception;

	//상품 추가  
	public int setInsert(DirectVO directVO) throws Exception;
	
	//파일 추가 
	public int setFileInsert(DirectVO directVO) throws Exception;

	//상품 수정 
	public int setUpdate(DirectVO directVO) throws Exception;
	
	//상품 삭제
	public int setDelete(DirectVO directVO) throws Exception;
	
	//파일 삭제 
	public int setFileDelete (DirectVO directVO) throws Exception;

	public ArrayList<DirectVO> getDirectList();
		 
		
}
