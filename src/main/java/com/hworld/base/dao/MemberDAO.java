package com.hworld.base.dao;

import org.apache.ibatis.annotations.Mapper;

import com.hworld.base.vo.MemberVO;

@Mapper
public interface MemberDAO {
	
	public int setMemberAdd(MemberVO memberVO) throws Exception;
	
	public MemberVO getMemberLogin(MemberVO memberVO) throws Exception;
	
	public int getMemberLogout(MemberVO memberVO) throws Exception;
	
	public MemberVO idDuplicateCheck(MemberVO memberVO) throws Exception;
}
