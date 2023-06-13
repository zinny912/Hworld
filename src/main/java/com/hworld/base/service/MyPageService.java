package com.hworld.base.service;

import org.apache.commons.lang3.StringUtils;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.hworld.base.dao.MyPageDAO;
import com.hworld.base.vo.MemberVO;

@Service
public class MyPageService {
	
	
	
	@Autowired
	private MyPageDAO myPageDAO;
	
	@Autowired
	private BCryptPasswordEncoder pwEncoder;
	
	// 회원 수정
	public int memberUpdate(MemberVO memberVO) throws Exception {
		return myPageDAO.memberUpdate(memberVO);
	}
	
	
	
//	rawPw = memberVO.getPw(); // 비밀번호 데이터 얻음
//	encodePw = pwEncoder.encode(rawPw); // 비밀번호 인코딩
//	memberVO.setPw(encodePw); // 인코딩 된 비밀번호 member 객체에 다시 저장	
//	
//	int result = memberService.setMemberAdd(memberVO);
	
	public void pwUpdate(MemberVO memberVO) throws Exception {
		String rawPw = ""; // 인코딩 전 비밀번호
		String encodePw = ""; // 인코딩 후 비밀번호
		
	    if(StringUtils.isEmpty(memberVO.getPw())) {
	        try {
	        	rawPw = memberVO.getPw(); // 비밀번호 데이터 얻음
	        	encodePw = pwEncoder.encode(memberVO.getPw());
//	        	encodePw = pwEncoder.encode(rawPw); // 비밀번호 인코딩
	        	memberVO.setPw(encodePw); // 인코딩 된 비밀번호 member 객체에 다시 저장
	            
	            myPageDAO.pwUpdate(memberVO);
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
	}
	
}
