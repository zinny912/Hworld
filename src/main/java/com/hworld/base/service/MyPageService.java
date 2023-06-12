package com.hworld.base.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hworld.base.dao.MyPageDAO;
import com.hworld.base.vo.MemberVO;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class MyPageService {

	@Autowired
	private MyPageDAO myPageDAO;
	
	/* 회원 수정 */
	public int memberUpdate(MemberVO memberVO) throws Exception {
		return myPageDAO.memberUpdate(memberVO);
	}
	
	
		
	
}
