package com.hworld.base.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.hworld.base.dao.MyPageDAO;
import com.hworld.base.util.Pager;
import com.hworld.base.vo.BillVO;
import com.hworld.base.vo.MemberVO;
import com.hworld.base.vo.TelephoneVO;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class MyPageService {
	
	@Autowired
	private MyPageDAO myPageDAO;
	
	@Autowired
	private BCryptPasswordEncoder pwEncoder;
	
	//납부, 미납내역 출력하기
//	public List<BillVO> getPMDList(Pager pager, HttpSession session) throws Exception{
//		
//		MemberVO memberVO = (MemberVO)session.getAttribute("memberVO");
//		pager.setMemberNum(memberVO.getMemberNum());
//		
//		Long totalCount = myPageDAO.getTotalBill(pager);
//		pager.makeNum(totalCount);
//		pager.makeStartRow();
//		
//		
//		return myPageDAO.getPMDList(pager);
//	}
	
	//telephoneVO 기반 납부, 미납내역 출력하기
	public List<TelephoneVO> getTPList(Pager pager, HttpSession session) throws Exception{
		
		MemberVO memberVO = (MemberVO)session.getAttribute("memberVO");
		pager.setMemberNum(memberVO.getMemberNum());
		
		Long totalCount = myPageDAO.getTotalBill(pager);
		pager.makeNum(totalCount);
		pager.makeStartRow();
		
		return myPageDAO.getTPList(pager);
	}
	
	
	//회원의 대표 회선 정보 가져오기
	public Map<String, Object> getKingDetail(HttpSession session) throws Exception{
		
		MemberVO memberVO = (MemberVO)session.getAttribute("memberVO");
		
		return myPageDAO.getKingDetail(memberVO);
	}
	
	
	//회원 비밀번호 변경
	public int setPasswordUpdate(MemberVO memberVO, HttpSession session) throws Exception{
		
		//세션으로부터 memberNum 받아서 memberVO에 저장
		MemberVO mem = (MemberVO)session.getAttribute("memberVO");
		//memberVO에 memberNum 입력
		memberVO.setMemberNum(mem.getMemberNum());
		
		//비밀번호 암호화 후 memberVO에 저장
		String rawNpw = memberVO.getPw();
		String encodeNpw = pwEncoder.encode(rawNpw);
		memberVO.setPw(encodeNpw);
		
		//저장된 memberVO로 업데이트 실행
		int result = myPageDAO.setPasswordUpdate(memberVO);
		
		return result;
	}
	
	
	//회원 정보 변경
	public int setMemberUpdate(MemberVO memberVO, HttpSession session) throws Exception{
		
		//세션으로부터 memberNum 받아서 memberVO에 저장
		MemberVO mem = (MemberVO)session.getAttribute("memberVO");
		//memberVO에 memberNum 입력
		memberVO.setMemberNum(mem.getMemberNum());
		
		//저장된 memberVO로 업데이트 실행
		int result = myPageDAO.setMemberUpdate(memberVO);
		
		//업데이트 된 정보로 세션 업데이트 - 될지 모르겠음
		memberVO = myPageDAO.getNewSession(memberVO);
		session.setAttribute("memberVO", memberVO);
		
		return result;
	}
	
	
	
	
}
