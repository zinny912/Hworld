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
	
	//@Test
	void getMemberSearch() throws Exception{
		log.info("test");
		ApplicationVO applicationVO = new ApplicationVO();
		
		applicationVO.setRrnf("950914");
		applicationVO.setRrnl("1234568");
		
		MemberVO memberVO = applicationDAO.getMemberSearch(applicationVO);
		assertNotNull(memberVO);
	}
	
	//@Test
	void setMemberInitAdd() throws Exception{
		ApplicationVO applicationVO = new ApplicationVO();
		
		applicationVO.setName("brian");
		applicationVO.setAddress1("12345");
		applicationVO.setAddress2("서울 금천구 디지털로123");
		applicationVO.setAddress3("123-11");
		applicationVO.setRrnf("991234");
		applicationVO.setRrnl("1234567");
		applicationVO.setPhoneNum("010-1234-5678");
		
		int result = applicationDAO.setMemberInitAdd(applicationVO);
		
		assertNotEquals(0, result);
	}

}
