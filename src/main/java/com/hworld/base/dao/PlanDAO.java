package com.hworld.base.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.hworld.base.vo.PlanVO;

@Mapper
public interface PlanDAO {
	
	// 전체 요금제 갯수 조회
    public Long getTotalCount() throws Exception;
	
	// 요금제 리스트 조회
    public List<PlanDAO> getList() throws Exception;
	
	// 요금제 하나 조회
    public PlanVO getDetail(PlanVO planVO) throws Exception;
	
	// 요금제 등록
    public int setInsert(PlanVO planVO) throws Exception;
	
	// 요금제 수정
    public int setUpdate(PlanVO planVO) throws Exception;
	
	// 요금제 삭제
    public int setDelete(PlanVO planVO) throws Exception;
}
