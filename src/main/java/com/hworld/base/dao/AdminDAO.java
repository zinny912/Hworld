package com.hworld.base.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.hworld.base.util.Pager;
import com.hworld.base.vo.MemberVO;

@Mapper
public interface AdminDAO {
	
	public Long getTotalCount(Pager pager) throws Exception;
	
	public List<MemberVO> memberList(Pager pager) throws Exception;
	
}
