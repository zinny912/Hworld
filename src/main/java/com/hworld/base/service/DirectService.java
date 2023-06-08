package com.hworld.base.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.hworld.base.dao.DirectDAO;
import com.hworld.base.util.Pager;
import com.hworld.base.vo.DirectVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class DirectService {

	@Autowired
	private DirectDAO directDAO;
	
	//상품 리스트
	public List<DirectVO> getList(Pager pager) throws Exception{
		pager.makeStartRow();
		pager.makeNum(directDAO.getTotalCount(pager));
		return directDAO.getList(pager);
	}
	public List<DirectVO> getListByPriceH(Pager pager) throws Exception {
		pager.makeStartRow();
		pager.makeNum(directDAO.getTotalCount(pager));
		return directDAO.getListByPriceH(pager);
	};
	public List<DirectVO> getListByPriceL(Pager pager) throws Exception {
		pager.makeStartRow();
		pager.makeNum(directDAO.getTotalCount(pager));
		return directDAO.getListByPriceL(pager);
	};
	
	//상품 상세페이지 
	public DirectVO getDetail(DirectVO directVO)throws Exception{
		return directDAO.getDetail(directVO);
	}
	
//	public DirectVO getPriceList(DirectVO directVO)throws Exception{
//		return directDAO.getPriceList(directVO);
//	}
	
	//상품 등록 
	 public int setInsert(DirectVO directVO)throws Exception{
	      int result = directDAO.setInsert(directVO);
	      return result;
	   }
	

	//상품 수정 
	public int setUpdate(DirectVO directVO) throws Exception{
		return directDAO.setUpdate(directVO);
	}
	//상품 삭제 
	public int setDelete(DirectVO directVO) throws Exception{
		return directDAO.setDelete(directVO);
	}
	public boolean getPrice(String directCode) {
		// TODO Auto-generated method stub
		return true;
	}
	
	
}
