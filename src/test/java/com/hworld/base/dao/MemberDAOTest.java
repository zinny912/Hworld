package com.hworld.base.dao;

import static org.junit.jupiter.api.Assertions.*;

import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.hworld.base.dao.MemberDAO;
import com.hworld.base.util.SHA256Util;
import com.hworld.base.vo.MemberVO;

import lombok.extern.slf4j.Slf4j;

@SpringBootTest
@Slf4j
class MemberDAOTest {
	
	@Autowired
	private MemberDAO memberDAO;
	
	//String RRN = memberVO.getRrnf()+"-"+memberVO.getRrnl();
    //memberVO.setRrnl(SHA256Util.encryptMD5(RRN));
	
	//getIdentifybyRRN
	//@Test
	void getIdentifybyRRN() throws Exception{
		//rrnl 암호화 전 : membernum=4, name=이진희, RRN=910912-2345678
//		MemberVO memberVO = new MemberVO();
//		memberVO.setRrnf("910912");
//		memberVO.setRrnl("2345678");
//		
//		MemberVO result = memberDAO.getIdentifybyRRN(memberVO);
//		assertNull(result);
		
		//rrnl 암호화 후 : membernum=66, name=issac, RRN=991010-1101010
		MemberVO memberVO = new MemberVO();
		String RRN = "991010-1101010";
				
		memberVO.setRrnf("991010");
		memberVO.setRrnl(SHA256Util.encryptMD5(RRN));
		
		MemberVO result = memberDAO.getIdentifybyRRN(memberVO);
		
		assertNull(result);
	}
	
	//getIdentifybyName
	@Test
	void getIdentifybyName() throws Exception{
		//rrnl 암호화 전 : membernum=4, name=이진희, RRN=910912-2345678
//		MemberVO memberVO = new MemberVO();
//		memberVO.setRrnf("910912");
//		memberVO.setRrnl("2345678");
//		memberVO.setName("이진희");
//
//		MemberVO result = memberDAO.getIdentifybyName(memberVO);
//		assertNull(result);
		
		//rrnl 암호화 후 : membernum=66, name=issac, RRN=991010-1101010
		MemberVO memberVO = new MemberVO();
		String RRN = "991010-1101010";
				
		memberVO.setRrnf("991010");
		memberVO.setRrnl(SHA256Util.encryptMD5(RRN));
		memberVO.setName("issac");
		
		MemberVO result = memberDAO.getIdentifybyName(memberVO);
		
		assertNull(result);
	}
	
	
	
	
//	@Test
//	void getMemberList() throws Exception{
//		log.info("test");
//		List<MemberVO> ar = new ArrayList<>();
//		
//		ar = memberDAO.getMemberList();
//		assertEquals(1, ar.size());
//		
//	}
	
}
