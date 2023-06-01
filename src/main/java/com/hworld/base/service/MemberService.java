package com.hworld.base.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hworld.base.dao.MemberDAO;
import com.hworld.base.vo.MemberVO;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
@Transactional(rollbackFor = Exception.class)
public class MemberService {

	@Autowired
	private MemberDAO memberDAO;
	
	
	public List<MemberVO> getMemberList() throws Exception{
		return memberDAO.getMemberList();
	}
}
