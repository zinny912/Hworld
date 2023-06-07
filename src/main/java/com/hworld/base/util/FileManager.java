package com.hworld.base.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.view.AbstractView;

import com.hworld.base.vo.DirectVO;

import lombok.extern.slf4j.Slf4j;

@Component
@Slf4j
public class FileManager extends AbstractView {
	
	@Value("${app.upload}")
	private String path;
	
		@Override
		protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request,
				HttpServletResponse response) throws Exception {
			// controller에서 빠져나갈때 같은 이름을 찾는다 
//			
//			DirectVO directVO = (DirectVO)model.get("boardFileVO");
//			String board = (String) model.get("board"); 
//			
//			 File file = new File(path+board, directVO.getFileName());
//			 
//			 //한글 처리
//			 response.setCharacterEncoding("UTF-8");
//			 
//			 //총 파일의 크기
//			 response.setContentLengthLong(file.length());
//			 
//			 //다운로드시 파일의 이름을 인코딩
//			 String oriName = URLEncoder.encode(boardFileVO.getOriName(), "UTF-8");
//			 
//			 //header 설정
//			 response.setHeader("Content-Disposition", "attachment;filename=\""+oriName+"\"");
//			 response.setHeader("Content-Transfer-Encoding", "binary");
//			 
//			 //HDD에서 파일을 읽고
//			 FileInputStream fi = new FileInputStream(file);
//			 //Client 로 전송 준비
//			 OutputStream os = response.getOutputStream();
//			 
//			 //전송
//			 FileCopyUtils.copy(fi, os);
//			 
//			 //자원 해제
//			 os.close();
//			 fi.close();
//			
			
		}
		
	
	
	
		//1. HDD에 파일을 저장하고 저장된 파일명을 리턴
		public String saveFile(MultipartFile[] multipartFiles, DirectVO directVO) throws Exception {

		    //1. 폴더 생성
		    File folder = new File(path); // 저장할 폴더

		    if (!folder.exists()) {
		        folder.mkdirs();
		        log.warn(path);
		    }

		    //2. 저장할 파일 이름 생성(directCode의 끝 5자리) 
		    String fileName = directVO.getDirectCode().substring(directVO.getDirectCode().length() - 5);
		    log.warn(fileName);
		    System.out.println(fileName);

		    // 파일 저장
		    if (multipartFiles != null && multipartFiles.length > 0 && multipartFiles[0] != null) {
		        File file = new File(folder, fileName); // 저장할 파일 경로 생성
		        multipartFiles[0].transferTo(file);
		    }

		    // 썸네일 파일 저장
		    if (multipartFiles != null && multipartFiles.length > 1 && multipartFiles[1] != null) {
		        String thumbFileName = fileName + "thumb";
		        File thumbFile = new File(folder, thumbFileName); // 썸네일 파일 경로 생성
		        multipartFiles[1].transferTo(thumbFile);
		        log.error(thumbFileName);
		    }

		    return fileName;
		}


}
