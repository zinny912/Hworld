package com.hworld.base.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
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
	
	@Autowired
	private BCryptPasswordEncoder pwEncoder;
	
	public int setMemberAdd(MemberVO memberVO) throws Exception {
		
		String RRN = memberVO.getRrnf()+"-"+memberVO.getRrnl();
	    memberVO.setRrnl(SHA256Util.encryptMD5(RRN));
		
		return memberDAO.setMemberAdd(memberVO);
	}		
	
	public MemberVO emailCheck(MemberVO memberVO) throws Exception {
		return memberDAO.emailCheck(memberVO);
	}
	
	public int memberPwCheck(MemberVO memberVO) throws Exception {
		return memberDAO.memberPwCheck(memberVO);
	}
	
	public void passwordUpdate(MemberVO memberVO) throws Exception {
		memberDAO.passwordUpdate(memberVO);
	}
	
	public MemberVO getMemberLogin(MemberVO memberVO) throws Exception {
		return memberDAO.getMemberLogin(memberVO);
	}
	
	public int getMemberLogout(MemberVO memberVO) throws Exception {
		return memberDAO.getMemberLogout(memberVO);
	}
	
	public MemberVO emailSearch(MemberVO memberVO) throws Exception {
		return memberDAO.emailSearch(memberVO);
	}
}
