package com.hworld.base.dao;

import static org.junit.jupiter.api.Assertions.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.hworld.base.util.Pager;
import com.hworld.base.vo.BillVO;
import com.hworld.base.vo.MemberVO;
import com.hworld.base.vo.TelephoneVO;

import lombok.extern.slf4j.Slf4j;

@SpringBootTest
@Slf4j
class MyPageDAOTest {
	
	@Autowired
	private MyPageDAO myPageDAO;
	
	
	//getTotalBill
	//@Test
	void getTotalBill() throws Exception{
		Pager pager = new Pager();
		pager.setMemberNum(98);
		Long totalCount = myPageDAO.getTotalBill(pager);
		
		assertEquals(0, totalCount);
	}
	
	
	//getPMDList
	//@Test
	void getPMDList() throws Exception{
		Pager pager = new Pager();
		
		//pager 처리할 총 갯수 선택
		pager.setMemberNum(98);
		Long totalCount = myPageDAO.getTotalBill(pager);
		
		pager.makeNum(totalCount);
		pager.makeStartRow();
		List<BillVO> ar =  myPageDAO.getPMDList(pager);
		
		assertEquals(0, ar.size());
		
	}
	
	
	//getPMDList2
	@Test
	void getTPList() throws Exception{
		Pager pager = new Pager();
		
		//pager 처리할 총 갯수 선택
		pager.setMemberNum(98);
		Long totalCount = myPageDAO.getTotalBill(pager);
		
		pager.makeNum(totalCount);
		pager.makeStartRow();
		List<TelephoneVO> ar =  myPageDAO.getTPList(pager);
		
		assertNotEquals(0, ar.size());
		
		for (TelephoneVO telephoneVO : ar) {
			log.error(" ::::::::::::: phoneNum {} ", telephoneVO.getPhoneNum());
			for (BillVO billVO : telephoneVO.getBillVOs()) {
				log.error(" ::::::::::::::::::: billVO {} ", billVO.getPayMonth());
			}
		}
		
	}
		
	
	//getKingDetail
	//@Test
	void getKingDetail() throws Exception{
		MemberVO memberVO = new MemberVO();
		memberVO.setMemberNum(98);
		
		Map<String, Object> map = myPageDAO.getKingDetail(memberVO);
		
		log.error(" ::::::::::::::::::::: name: {} ", map.get("NAME"));
		log.error(" ::::::::::::::::::::: phoneNum: {} ", map.get("PHONENUM"));
		log.error(" ::::::::::::::::::::: planName: {} ", map.get("PLANNAME"));
		
		
		assertEquals(0, map.size());
	}
	

}
