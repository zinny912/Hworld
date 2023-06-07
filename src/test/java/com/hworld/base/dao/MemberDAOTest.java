package com.hworld.base.dao;

import static org.junit.jupiter.api.Assertions.*;

import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.hworld.base.dao.MemberDAO;
import com.hworld.base.vo.MemberVO;

import lombok.extern.slf4j.Slf4j;

@SpringBootTest
@Slf4j
class MemberDAOTest {
	
	@Autowired
	private MemberDAO memberDAO;
	
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
