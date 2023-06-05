package com.hworld.base.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hworld.base.dao.ApplicationDAO;
import com.hworld.base.vo.ApplicationVO;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
@Transactional(rollbackFor = Exception.class)
public class ApplicationService {
	
	@Autowired
	private ApplicationDAO applicationDAO;
	
	public int setFormAdd(ApplicationVO applicationVO) throws Exception{
		return applicationDAO.setFormAdd(applicationVO);
	}
	
}
