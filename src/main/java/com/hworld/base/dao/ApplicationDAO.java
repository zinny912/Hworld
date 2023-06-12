package com.hworld.base.dao;

import java.io.EOFException;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.hworld.base.vo.ApplicationVO;
import com.hworld.base.vo.DirectVO;
import com.hworld.base.vo.MemberVO;
import com.hworld.base.vo.PlanVO;

@Mapper
public interface ApplicationDAO {
	
	//신청서 INSERT (+ 회원 init INSERT) + 회선 INSERT
	//1.신청서 DB INSERT
	public int setFormAdd(ApplicationVO applicationVO) throws Exception;
	
	//2.신청서 기반(주민번호)으로 일치하는 회원정보가 있는지 검색
	public MemberVO getMemberSearch(ApplicationVO applicationVO) throws Exception;
	
	//3-1a.일치하는 회원이 없으면 회원번호 생성
	//3-1b.생성된 회원번호 + 신청서에 입력된 정보를 기반으로 회원VO 생성(ID/PW NULL) 후 insert, 그 후 3-2b로 진행
	public int setMemberInitAdd(ApplicationVO applicationVO) throws Exception; 
	
	
	//3-2a.일치하는 회원이 있으면 회원번호 받아오기
	//3-2b.받아온 회원번호로 회선VO 만들기
	public int setTelephoneInitAdd(ApplicationVO applicationVO) throws Exception;
	
	//존재하는 plan 타입 가져오기
	public List<PlanVO> getExistPlanList() throws Exception;
	
	//plan list 가져오기
	public List<PlanVO> getPlanList() throws Exception;
	
	//direct list 가져오기
	public List<DirectVO> getDirectList() throws Exception;
	
	//getSelectedDirectList
	public List<DirectVO> getSelectedDirectList(DirectVO directVO) throws Exception;
	
	
}
