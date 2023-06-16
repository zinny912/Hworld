package com.hworld.base.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.hworld.base.dao.DirectDAO;
import com.hworld.base.dao.PlanDAO;
import com.hworld.base.util.Pager;
import com.hworld.base.vo.BaseVO;
import com.hworld.base.vo.DirectVO;
import com.hworld.base.vo.PlanVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class PlanService {

	@Autowired
	private PlanDAO planDAO;
	
	//요금제 리스트
	public List<PlanVO> getPlanList() throws Exception{
		return planDAO.getPlanList();
	}
	
	public List<PlanVO> getGeneralList() throws Exception{
		return planDAO.getGeneralList();
	}
	public List<PlanVO> getSeniorList() throws Exception{
		return planDAO.getSeniorList();
	}
	public List<PlanVO> getTeenList() throws Exception{
		return planDAO.getTeenList();
	}
	public List<PlanVO> getWelfareList() throws Exception{
		return planDAO.getWelfareList();
	}
	public List<PlanVO> getZemList() throws Exception{
		return planDAO.getZemList();
	}
	public List<PlanVO> getHeroList() throws Exception{
		return planDAO.getHeroList();
	}
	
	//요금제 상세페이지 
	public PlanVO getDetail(PlanVO planVO)throws Exception{
		return planDAO.getDetail(planVO);
	}
	
	public PlanVO getNoteName(PlanVO planVO) throws Exception{
		return planDAO.getNoteName(planVO);
	}
	// 선택된 타입의 공통코드 정보 가져오기 
	public List<BaseVO> getCommonCode(BaseVO baseVO) throws Exception{
		return planDAO.getCommonCode(baseVO);
	}
	// 새로운 공통코드 인서트 
	public int setCommonCode(BaseVO baseVO) throws Exception{
		return planDAO.setCommonCode(baseVO);
	}
	
	//요금제 등록 
	public int setInsert(PlanVO planVO)throws Exception{
		return planDAO.setInsert(planVO);
	}
	//요금제 수정 
	public int setUpdate(PlanVO planVO) throws Exception{
		return planDAO.setUpdate(planVO);
	}
	//요금제 삭제 
	public int setDelete(PlanVO planVO) throws Exception{
		return planDAO.setDelete(planVO);
	}
	
	
}
