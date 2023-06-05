package com.hworld.base.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hworld.base.dao.MemberDAO;
import com.hworld.base.dao.NoticeDAO;
import com.hworld.base.util.Pager;
import com.hworld.base.vo.BoardVO;
import com.hworld.base.vo.MemberVO;
import com.hworld.base.vo.NoticeVO;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
@Transactional(rollbackFor = Exception.class)
public class CustomerSupportService {

	@Autowired
	private NoticeDAO noticeDAO;
	
	
	public List<BoardVO> getNoticeList(Pager pager) throws Exception {
		Long totalCount = noticeDAO.getTotalCount(pager);
		pager.makeNum(totalCount);
		pager.makeStartRow();
		return noticeDAO.getList(pager);
		
	}
}
