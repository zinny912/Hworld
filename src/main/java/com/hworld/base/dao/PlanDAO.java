package com.hworld.base.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.hworld.base.util.Pager;
import com.hworld.base.vo.BaseVO;
import com.hworld.base.vo.EPlanVO;
import com.hworld.base.vo.PlanVO;

@Mapper
public interface PlanDAO {
	
	// 전체 요금제 갯수 조회
    public Long getTotalCount() throws Exception;
	
	// 요금제 리스트 조회
    public List<PlanVO> getPlanList() throws Exception;
    public List<PlanVO> getGeneralList() throws Exception;
    public List<PlanVO> getSeniorList() throws Exception;
    public List<PlanVO> getTeenList() throws Exception;
    public List<PlanVO> getWelfareList() throws Exception;
    public List<PlanVO> getZemList() throws Exception;
    public List<PlanVO> getHeroList() throws Exception;
	
	// 요금제 하나 조회
    public PlanVO getDetail(PlanVO planVO) throws Exception;
    
    public PlanVO getNoteName(PlanVO planVO) throws Exception;
    
    //public BaseVO getCommonCode(BaseVO baseVO) throws Exception;
    
    public List<BaseVO> getCommonCode(BaseVO baseVO) throws Exception;
	
	// 요금제 등록
    public int setInsert(PlanVO planVO) throws Exception;
	
	// 요금제 수정
    public int setUpdate(PlanVO planVO) throws Exception;
	
	// 요금제 삭제
    public int setDelete(PlanVO planVO) throws Exception;
    
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
