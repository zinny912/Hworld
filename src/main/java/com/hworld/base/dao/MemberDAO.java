package com.hworld.base.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.hworld.base.vo.MemberVO;

@Mapper
public interface MemberDAO {

	public List<MemberVO> getMemberList() throws Exception;
}
