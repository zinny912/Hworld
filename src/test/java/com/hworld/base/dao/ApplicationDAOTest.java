package com.hworld.base.dao;

import static org.junit.jupiter.api.Assertions.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.hworld.base.vo.ApplicationVO;
import com.hworld.base.vo.DirectVO;
import com.hworld.base.vo.MemberVO;
import com.hworld.base.vo.PlanVO;

import lombok.extern.slf4j.Slf4j;

@SpringBootTest
@Slf4j
class ApplicationDAOTest {
	
	@Autowired
	private ApplicationDAO applicationDAO;
	
	//memberSearch
	//@Test
	void getMemberSearch() throws Exception{
		log.info("test");
		ApplicationVO applicationVO = new ApplicationVO();
		
		applicationVO.setRrnf("950914");
		applicationVO.setRrnl("1234568");
		
		MemberVO memberVO = applicationDAO.getMemberSearch(applicationVO);
		assertNotNull(memberVO);
	}
	
	//initMemberAdd
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
	
	//planList
	//@Test
	void getPlanList() throws Exception{
		
		List<PlanVO> ar = applicationDAO.getPlanList();
		
		assertEquals(0, ar.size());
	}
	
	//directList
	//@Test
	void getDirectList() throws Exception{
		
		List<DirectVO> ar = applicationDAO.getDirectList();
		
		assertEquals(0, ar.size());
	}
	
	//getSelectedDirectList
	//@Test
	void getSelectedDirectList() throws Exception{
		DirectVO directVO = new DirectVO();
		directVO.setSlicedCode("G2301");
		
		List<DirectVO> ar = applicationDAO.getSelectedDirectList(directVO);
		assertEquals(0, ar.size());
	}
	
	//getMonthlyPay - procedure
	//@Test
	void getMonthlyPay() throws Exception {
		Map<String, Object> map = new HashMap<>();
		map.put("param1", "P01BACBV512I1402");
		map.put("param2", 1);
		map.put("param3", "G01");
		
		Map<?, ?> result = applicationDAO.getMonthlyPay(map);
		log.info(" :::::::::::::::::: MonthlyPhonePrice: {} ", map.get("out_phonePayPrice"));
		log.info(" :::::::::::::::::: MonthlyPlanPrice: {} ", map.get("out_planPrice"));
		
		assertNull(result);
	}
	
	//isDuplicatePhoneNum
	//@Test
	void isDuplicatePhoneNum() throws Exception{
		String phoneNum = "01012345678";
		String getNum = applicationDAO.isDuplicatePhoneNum(phoneNum);
		log.info(" :::::::::::::::::::::::::::::: {} ", getNum);
		boolean check = false;
		
		if(getNum != null) {
			check = true;
		}
		
		assertNull(getNum.isEmpty());
	}
	
	
	//setTelephoneInitAdd - procedure
	@Test
	void setTelephoneInitAdd() throws Exception {
//		Map<String, Integer> map = new HashMap<>();
//		map.put("appNum", 43);
//		map.put("memberNum", 4);
//		
//		int result = applicationDAO.setTelephoneInitAdd(map);
//		
//		assertEquals(0, result);
	}
	
}
