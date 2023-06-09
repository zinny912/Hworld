package com.hworld.base.service;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import javax.naming.spi.DirStateFactory.Result;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
	
	
	// 상품 하나 옵션 다수 조회
	public List<DirectVO> getDetail(String slicedCode) throws Exception {
		
		
	    return directDAO.getDetail(slicedCode);
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
	
	
	public void setSeenList(HttpServletRequest request, HttpServletResponse response, String slicedCode) {
	    Cookie[] cookies = request.getCookies();
	    boolean found = false;

	    if (slicedCode != null && slicedCode.length() >= 5) {
	        // 기존에 저장된 쿠키에서 해당 상품 ID를 찾아 업데이트
	        if (cookies != null) {
	            for (Cookie cookie : cookies) {
	                if (cookie.getName().equals("recentlyViewedProduct")) {
	                    slicedCode = cookie.getValue().substring(cookie.getValue().length() - 5);
	                    String[] slicedCodes = slicedCode.split(",");
	                    List<String> directList = new ArrayList<>(Arrays.asList(slicedCodes));

	                    // 중복된 상품 ID가 있는 경우 기존 항목 제거
	                    if (directList.contains(slicedCode)) {
	                        directList.remove(slicedCode);
	                    }

	                    // 상품 ID 추가
	                    directList.add(0, slicedCode);

	                    // 최대 개수를 초과하는 경우 맨 뒤 항목 삭제
	                    if (directList.size() > 5) {
	                        directList = directList.subList(0, 5);
	                    }

	                    // 쿠키 값 업데이트
	                    slicedCode = String.join(",", directList);
	                    cookie.setValue(slicedCode);
	                    response.addCookie(cookie);

	                    found = true;
	                    break;
	                }
	            }
	        }
	    }

	    // 쿠키에 최근 본 상품 ID가 없는 경우 새로운 쿠키 생성
	    if (!found) {
	        Cookie cookie = new Cookie("recentlyViewedProduct", slicedCode);
	        cookie.setMaxAge(12 * 60 * 60); // 12시간 설정
	        cookie.setPath("/");
	        response.addCookie(cookie);
	    }
	}

    
    
    // 쿠키에서 최근 본 상품 정보를 읽어오는 메서드
	public List<DirectVO> getseenList(HttpServletRequest request) throws Exception {
	    Cookie[] cookies = request.getCookies();
	    List<DirectVO> recentlyViewedProducts = new ArrayList<>();

	    if (cookies != null) {
	        for (Cookie cookie : cookies) {
	            if (cookie.getName().equals("recentlyViewedProduct")) {
                    String slicedCode5 = cookie.getValue().substring(cookie.getValue().length() - 5);
	                String[] slicedCodes = slicedCode5.split(",");
	                int codesLength = slicedCodes.length;

	                // 최근 본 상품이 5개 이상인 경우 최근 5개만 사용
	                int startIndex = Math.max(0, codesLength - 3);

	                for (int i = startIndex; i < codesLength; i++) {
	                    String slicedCode = slicedCodes[i];
	                    // productId를 사용하여 상품 정보를 조회하는 로직을 구현
	                    List<DirectVO> directVO = getDetail(slicedCode);
	                    if (directVO != null) {
	                        recentlyViewedProducts.addAll(directVO);
	                    }
	                }
	            }
	            break;
	        }
	    }

	    return recentlyViewedProducts;
	}

	
}
