package com.hworld.base.dao;

import org.apache.ibatis.annotations.Mapper;

import com.hworld.base.vo.MemberVO;

@Mapper
public interface MemberDAO {
	
	public int setMemberAdd(MemberVO memberVO) throws Exception;
	
	public MemberVO emailCheck(MemberVO memberVO) throws Exception;
	
	public int memberPwCheck(MemberVO memberVO) throws Exception;
	
	public void passwordUpdate(MemberVO memberVO) throws Exception;
	
	public MemberVO getMemberLogin(MemberVO memberVO) throws Exception;
	
	public int getMemberLogout(MemberVO memberVO) throws Exception;
	
	public MemberVO emailSearch(MemberVO memberVO) throws Exception;
}
