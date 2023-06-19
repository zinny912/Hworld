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

@Service
public class MyPageService {
	
	@Autowired
	private MyPageDAO myPageDAO;
	
	@Autowired
	private BCryptPasswordEncoder pwEncoder;
	
	//납부, 미납내역 출력하기
	public List<BillVO> getPMDList(Pager pager, HttpSession session) throws Exception{
		
		MemberVO memberVO = (MemberVO)session.getAttribute("memberVO");
		pager.setMemberNum(memberVO.getMemberNum());
		
		Long totalCount = myPageDAO.getTotalBill(pager);
		pager.makeNum(totalCount);
		pager.makeStartRow();
		return myPageDAO.getPMDList(pager);
	}
	
	
	//회원의 대표 회선 정보 가져오기
	public Map<String, Object> getKingDetail(HttpSession session) throws Exception{
		
		MemberVO memberVO = (MemberVO)session.getAttribute("memberVO");
		
		return myPageDAO.getKingDetail(memberVO);
	}
	
	
	//회원 비밀번호 변경
	public int setPasswordUpdate(MemberVO memberVO, HttpSession session) throws Exception{
		
		//세션으로부터 memberNum 받아오기
		MemberVO mem = (MemberVO)session.getAttribute("memberVO");
		//memberVO에 memberNum 입력
		memberVO.setMemberNum(mem.getMemberNum());
		
		//
		return 0;
	}
	
	
	
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
