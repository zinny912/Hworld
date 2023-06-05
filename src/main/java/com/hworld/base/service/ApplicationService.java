package com.hworld.base.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hworld.base.dao.ApplicationDAO;
import com.hworld.base.vo.ApplicationVO;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
@Transactional(rollbackFor = Exception.class)
public class ApplicationService {
	
	@Autowired
	private ApplicationDAO applicationDAO;
	
	//신청서 db에 insert
	public int setFormAdd(ApplicationVO applicationVO) throws Exception{
		//작업 순서
		//1.신청서 DB에 INSERT
		//2.신청서에 적힌 주민번호가 일치하는 회원이 있는지 검색
		//3-1a.일치하는 회원이 없으면 회원번호 생성
		//3-1b.생성된 회원번호 + 신청서에 입력된 정보를 기반으로 회원VO 생성(ID/PW NULL). 그 후 INSERT -> 3-2로 진행
		//3-2a.일치하는 회원이 있으면 회원번호 받아오기
		//3-2b.받아온 회원번호로 회선VO 만들기
		//4.회선VO INSERT
		
		
		//최초 신청서 db에 insert
		int result = applicationDAO.setFormAdd(applicationVO)
		
		
		
		return result;
	}
	
}
