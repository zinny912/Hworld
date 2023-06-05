package com.hworld.base.dao;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.hworld.base.vo.ApplicationVO;
import com.hworld.base.vo.MemberVO;

import lombok.extern.slf4j.Slf4j;

@SpringBootTest
@Slf4j
class ApplicationDAOTest {
	
	@Autowired
	private ApplicationDAO applicationDAO;
	
	@Test
	void getMemberSearch() throws Exception{
		log.info("test");
		ApplicationVO applicationVO = new ApplicationVO();
		
		applicationVO.setRrnf("950914");
		applicationVO.setRrnl("1234568");
		
		MemberVO memberVO = applicationDAO.getMemberSearch(applicationVO);
		assertNotNull(memberVO);
	}

}
