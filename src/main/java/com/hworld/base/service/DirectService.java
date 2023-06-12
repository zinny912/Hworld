package com.hworld.base.service;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.naming.spi.DirStateFactory.Result;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.hworld.base.dao.DirectDAO;
import com.hworld.base.util.FileManager;
import com.hworld.base.util.Pager;
import com.hworld.base.vo.DirectVO;
import com.hworld.base.vo.PlanVO;
import com.hworld.base.vo.ReviewVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class DirectService {

	@Autowired
	private DirectDAO directDAO;
	@Autowired
	private FileManager fileManager;

	
	//상품 리스트
	public List<DirectVO> getList(Pager pager) throws Exception{
		pager.makeStartRow();
		pager.makeNum(directDAO.getTotalCount(pager));
		return directDAO.getList(pager);
	}
	
	// 상품 하나 옵션 다수 조회
	public List<DirectVO> getDetail(String slicedCode) throws Exception {
	    return directDAO.getDetail(slicedCode);
	}
	
	// 상품 리뷰 전체 불러오기
	public List<ReviewVO> getReview(String slicedCode) throws Exception {
		return directDAO.getReview(slicedCode);
	}
	
	// 상품 리뷰 작성 
	public int setReviewAdd(ReviewVO reviewVO) throws Exception {
		
		return directDAO.setReviewAdd(reviewVO);
	}
	

		
	//상품 등록 
	public int setInsert(DirectVO directVO, MultipartFile[] multipartFiles)throws Exception{
		
		String fileName = fileManager.deleteFile(multipartFiles, directVO);
		fileName = fileManager.saveFile(multipartFiles, directVO);
				
		
		int result = directDAO.setInsert(directVO);
		
		return result;
	}


	//상품 수정 
	public int setUpdate(DirectVO directVO, MultipartFile[] multipartFiles) throws Exception{
		
		String fileName = fileManager.deleteFile(multipartFiles, directVO);
		fileName = fileManager.saveFile(multipartFiles, directVO);	

		return directDAO.setUpdate(directVO);
	}

	
	//상품 삭제 
	public int setDelete(String slicedCode) throws Exception{
		
		
		return directDAO.setDelete(slicedCode);
	}
	
	//리뷰삭제
	public int setReviewDelete(ReviewVO reviewVO) throws Exception{
		return directDAO.setReviewDelete(reviewVO);
		
	}
	
	//리뷰수정
	public int setReviewUpdate(ReviewVO reviewVO) throws Exception{
		return directDAO.setReviewUpdate(reviewVO);
	}
	
	//getExistPlanList
	public List<PlanVO> getExistPlanList() throws Exception{
		return directDAO.getExistPlanList();
	}
	
	//getPlanList
	public List<PlanVO> getPlanList() throws Exception{
		return directDAO.getPlanList();
	}
	
	//getSelectedPlan
	public PlanVO getSelectedPlan(PlanVO planVO) throws Exception{
		return directDAO.getSelectedPlan(planVO);
	}
		
	
}
