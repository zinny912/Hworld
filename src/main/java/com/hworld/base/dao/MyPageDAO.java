package com.hworld.base.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.hworld.base.util.Pager;
import com.hworld.base.vo.BillVO;
import com.hworld.base.vo.MemberVO;

@Mapper
public interface MyPageDAO {
	
	//페이저 처리용 billVO 갯수 구하기
	public Long getTotalBill(Pager pager) throws Exception;
	
	//회원의 모든 billVO 불러오기
	public List<BillVO> getPMDList(Pager pager) throws Exception;
	
	//회원의 대표회선 정보 불러오기
	public Map<String, Object> getKingDetail(MemberVO memberVO) throws Exception;
	
	//회원의 비밀번호 업데이트
	public int setPasswordUpdate(MemberVO memberVO) throws Exception;
	
	//회원의 정보 업데이트
	public int setMemberUpdate(MemberVO memberVO) throws Exception;
	
	//세션 업데이트
	public MemberVO getNewSession(MemberVO memberVO) throws Exception;
}
