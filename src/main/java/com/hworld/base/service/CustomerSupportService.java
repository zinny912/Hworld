package com.hworld.base.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.hworld.base.dao.MemberDAO;
import com.hworld.base.dao.NoticeDAO;
import com.hworld.base.dao.QnaDAO;
import com.hworld.base.util.Pager;
import com.hworld.base.vo.BoardVO;
import com.hworld.base.vo.MemberVO;
import com.hworld.base.vo.NoticeVO;
import com.hworld.base.vo.QnaVO;
import com.hworld.base.vo.TelephoneVO;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
@Transactional(rollbackFor = Exception.class)
public class CustomerSupportService {

	@Autowired
	private NoticeDAO noticeDAO;
	
	@Autowired
	private QnaDAO qnaDAO;
	
	
	public List<BoardVO> getNoticeList(Pager pager) throws Exception {
		Long totalCount = noticeDAO.getTotalCount(pager);
		pager.makeNum(totalCount);
		pager.makeStartRow();
		return noticeDAO.getList(pager);
		
	}
	
	public List<TelephoneVO> setQnaInsert(HttpSession session) throws Exception {
		TelephoneVO telephoneVO = new TelephoneVO();
		telephoneVO.setMemberNum(1);

		return qnaDAO.getTelephoneList(telephoneVO); 
	}
	
	public int setQnaInsert(QnaVO qnaVO, HttpSession session, MultipartFile multipartFile) throws Exception {
		qnaVO.setMemberNum(1);
		return qnaDAO.setInsert(qnaVO);
	}
}
