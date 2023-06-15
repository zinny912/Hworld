package com.hworld.base.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hworld.base.dao.AdminDAO;
import com.hworld.base.util.Pager;
import com.hworld.base.vo.MemberVO;

@Service
@Transactional(rollbackFor = Exception.class)
public class AdminService {
	
	@Autowired
	private AdminDAO adminDAO;
	
	public List<MemberVO> memberList(Pager pager) throws Exception {
		Long totalCount = adminDAO.getTotalCount(pager);
		pager.makeNum(totalCount);
		pager.makeStartRow();		
		return adminDAO.memberList(pager);
	}
	
}
