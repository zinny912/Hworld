package com.hworld.base.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.hworld.base.util.Pager;
import com.hworld.base.vo.EPlanVO;

@Mapper
public interface EPlanDAO {
	
	// 부가서비스 갯수
	public Long getTotalCount(Pager pager) throws Exception;
	
	// 부가서비스 리스트 조회
	public List<EPlanVO> getList(Pager pager) throws Exception;
	
	// 부가서비스 하나 조회
	public EPlanVO getDetail(EPlanVO ePlanVO) throws Exception;

	// 부가서비스 추가
	public int setInsert(EPlanVO ePlanVO) throws Exception;
	
	// 부가서비스 수정
	public int setUpdate(EPlanVO ePlanVO) throws Exception;
	
	// 부가서비스 삭제
	public int setDelete(EPlanVO ePlanVO) throws Exception;
		
}
