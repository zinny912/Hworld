package com.hworld.base.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.hworld.base.dao.MyPageDAO;
import com.hworld.base.vo.MemberVO;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class MyPageService {

	@Autowired
	private MyPageDAO myPageDAO;
	
	@Autowired
	BCryptPasswordEncoder pwEncoder;
	
	@Autowired
	PasswordEncoder encoder;
	
	// 회원 수정
	public int memberUpdate(MemberVO memberVO) throws Exception {
		return myPageDAO.memberUpdate(memberVO);
	}
	
	// 비밀번호 변경
//	public void pwUpdate(MemberVO memberVO) throws Exception {
//		myPageDAO.pwUpdate(memberVO);
//	}
	
	public int pwUpdate(MemberVO memberVO) {
		String newPwd = pwEncoder.encode(memberVO.getPw());
		memberVO.setPw(newPwd); 

		int result = 0;          
		try {
			result = myPageDAO.pwUpdate(memberVO);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
//	public boolean matches(CharSequence rawPassword, String encodedPassword) {
//        if (rawPassword == null) {
//            throw new IllegalArgumentException("rawPassword cannot be null");
//        } else if (encodedPassword != null && encodedPassword.length() != 0) {
//            if (!this.encoder.matcher(encodedPassword).matches()) {
//                this.logger.warn("Encoded password does not look like BCrypt");
//                return false;
//            } else {
//                return BCrypt.checkpw(rawPassword.toString(), encodedPassword);
//            }
//        } else {
//            this.logger.warn("Empty encoded password");
//            return false;
//        }
//    }
	
		
	
}
