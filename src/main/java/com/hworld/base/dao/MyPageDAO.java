package com.hworld.base.dao;

import org.apache.ibatis.annotations.Mapper;

import com.hworld.base.vo.MemberVO;

@Mapper
public interface MyPageDAO {
	
	public int memberUpdate(MemberVO memberVO) throws Exception;
	
	public int pwUpdate(MemberVO memberVO) throws Exception;
	
}
