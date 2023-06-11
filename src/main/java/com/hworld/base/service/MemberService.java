package com.hworld.base.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.BindingResult;

import com.hworld.base.dao.MemberDAO;
import com.hworld.base.util.SHA256Util;
import com.hworld.base.vo.MemberVO;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class MemberService {

	@Autowired
	private MemberDAO memberDAO;
	
	
	public int setMemberAdd(MemberVO memberVO) throws Exception {
		
		String rrnl = memberVO.getRrnl();
        memberVO.setRrnl(SHA256Util.encryptMD5(memberVO.getRrnl()));
		
		return memberDAO.setMemberAdd(memberVO);
	}		
			
	public MemberVO emailCheck(MemberVO memberVO) throws Exception {
		return memberDAO.emailCheck(memberVO);
	}
	
	public MemberVO getMemberLogin(MemberVO memberVO) throws Exception {
		return memberDAO.getMemberLogin(memberVO);
	}
	
	public int getMemberLogout(MemberVO memberVO) throws Exception {
		return memberDAO.getMemberLogout(memberVO);
	}
}
