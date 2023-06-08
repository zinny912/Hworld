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
	
	
	//상품 상세페이지 
	public List<DirectVO> getDetail(DirectVO directVO)throws Exception{
		return directDAO.getDetail(directVO);
	}
	
	public DirectVO getPrice(String directCode) throws Exception {
		log.error(directCode);
		log.error("{}", directDAO.getPrice(directCode));
		log.error("{}", directDAO.getPrice(directCode).getDirectPrice());
		log.error("{}", directDAO.getPrice(directCode).getDirectStock());
		return directDAO.getPrice(directCode);
	}
	
	
	
		
	//상품 등록 
	public int setInsert(DirectVO directVO, MultipartFile[] multipartFiles)throws Exception{
		
		String fileName = fileManager.saveFile(multipartFiles, directVO);
				
		
		int result = directDAO.setInsert(directVO);
		
		return result;
	}


	//상품 수정 
	public int setUpdate(DirectVO directVO, MultipartFile[] multipartFiles) throws Exception{
		
		String fileName = fileManager.updateFile(multipartFiles, directVO);
		fileName = fileManager.saveFile(multipartFiles, directVO);	
		
		return directDAO.setUpdate(directVO);
	}
	
	public List<DirectVO> getLastFiveDigits(DirectVO directVO) throws Exception {
	    return directDAO.getLastFiveDigits(directVO);
	}

	
	
	//상품 삭제 
	public int setDelete(DirectVO directVO) throws Exception{
		return directDAO.setDelete(directVO);
	}
	
}
