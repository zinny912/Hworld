package com.hworld.base.dao;

import org.apache.ibatis.annotations.Mapper;

import com.hworld.base.vo.ApplicationVO;

@Mapper
public interface ApplicationDAO {
	
	public int setFormAdd(ApplicationVO applicationVO) throws Exception;
}
