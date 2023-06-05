package com.hworld.base.service;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.logging.log4j.util.PropertiesUtil;
import org.springframework.beans.factory.annotation.Value;

import com.hworld.base.util.Pager;
import com.hworld.base.util.SFTPManager;

public class SKYService  {
	  
	@Value("${sftp.host}")
    private String eaiServer;
	
	@Value("${sftp.port}")
	private int eaiPort;

	@Value("${sftp.userName}")
	private String eaiId;
	
	@Value("${sftp.password}")
	private String eaiPass;
	
	@Value("${sftp.eaiTmtnDir}")
	private String eaiTmtnDir;
	
	@Value("${sftp.eaiRcptnDir}")
	private String eaiRcptnDir;
	
	@Value("${sftp.workFileDirEAI}")
    private String workFileDirEAI;

	private DirectService directService;
	
     /**
	 * @method	saveSKY
	 * @desc	SFTP 테스트
	 * @param	N/A
	 * @return	N/A
	 * @throws	Exception
	 */
	public void saveSKY() throws Exception {
		
        boolean isConnect = false;
		boolean isUpload  = false;

		// 파일만들 리스트
	    List<Map<String, Object>> skyList = directService.getList(Pager); //   .selectList("SKYMapper.selectSKYList");
		
		if (skyList .size() > 0 && skyList != null) {
			
			String rlyId   = "SKY";
			String dcmCode = "SUNDAY";
			
			String filename =   rlyId + "$" 
			                  + dcmCode + "$"
			                  + DateUtil.getCurrentDate() + ".txt";  //yyyyMMdd
			//filename = SKY$SUNDAY$20210608.txt
			String filePath = workFileDirEAI + "send/" + filename;
			
			File file = new File(filePath);  // File객체 생성
			if(!file.exists()){              // 파일이 존재하지 않으면 
				file.createNewFile();        // 신규생성 or 덮어쓰기
			}
			
			//Runtime.getRuntime().exec("chmod -R 755 " + file);
			
			// BufferedWriter 생성
			BufferedWriter writer = new BufferedWriter(new FileWriter(file, false));
			
            try {
			     int i = 0;  // 마지막 라인 방지하기 위해
   			     for (Map<String, Object> rowMap : rntHousQlfcDcsnList) {
				
				     // 파일에 쓰기
				     writer.write((String) rowMap.get(rlyId));
				     i++;
				     if(rntHousQlfcDcsnList.size() != i) {
					    writer.newLine();
				     }
			     }
            } catch (IOException e) {
				LOGGER.error("saveSKY : {} ", e);
			} finally {
				if (writer != null) {writer.close();}
			}
			 
			// 내부EAI 서버 SFTP 전송
	    	SFTPManager sftp = new SFTPManager();
	    	isConnect = sftp.sftpConnect(eaiId, eaiServer, eaiPort, eaiPass);
	    	
	    	System.out.println("FTP 접속 성공여부 ------------------------------------------------------------------------------------------------------ : " + isConnect);
	    	
	    	if(isConnect) {
	    	
		    	isUpload  = sftp.upload(filePath, eaiTmtnDir, filename);
				System.out.println("업로드 성공여부 ------------------------------------------------------------------------------------------------------ : " + isUpload);
				sftp.disconnect();
				
				if(isUpload) {
					// 전송 UPATE
					Map<String, Object> inputMap = new HashMap<String, Object>();
                    mapper.update("SKYMapper.updateSKYInfo", inputMap);					
					System.out.println("DB 전송 업데이트 ------------------------------------------------------------------------------------------------------ ");
				}
	    	 }
		 }
    }
}    