package com.hworld.base.util;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.Vector;

import org.springframework.beans.factory.annotation.Value;

import com.jcraft.jsch.Channel;
import com.jcraft.jsch.ChannelSftp;
import com.jcraft.jsch.JSch;
import com.jcraft.jsch.JSchException;
import com.jcraft.jsch.Session;


public class SFTPManager {

	
    private Session sesConnection;
	private JSch jschSSHChannel;
	private ChannelSftp sftpChannel;
	private Channel channel;
    private String userName;
    private String password;
    private String host;
    private int port;
    
    // SFTP 서버 접속
    public boolean sftpConnect(String userName, String host, int port, String password) throws JSchException {
    	
    	this.userName = userName;
    	this.password = password;
    	this.host = host;
        this.port = port;

        boolean result = false;
        
        try {
    	     // 1. JSch 객체를 생성한다.
      	     jschSSHChannel = new JSch();
             // 2. 세션 객체를 생성한다(사용자 이름, 접속할 호스트, 포트를 인자로 전달한다.)
    	     sesConnection = jschSSHChannel.getSession(this.userName,this.host,this.port);
             // 3. 세션과 관련된 정보를 설정한다.
    	     sesConnection.setConfig("StrictHostKeyChecking", "no");
             // 4. 패스워드를 설정한다.
    	     sesConnection.setPassword(password);
    	
    	     sesConnection.setTimeout(60000);
        
    	     // 5. 접속한다.
    	     sesConnection.connect();
             // 6. sftp 채널을 연다.
    	     channel = sesConnection.openChannel("sftp");
             // 7. 채널에 연결한다.
             channel.connect();
             // 8. 채널을 FTP용 채널 객체로 캐스팅한다.
             sftpChannel = (ChannelSftp) channel;

             result = true;
        } catch (Exception e) {
             System.out.println("sftpConnect fail - " + e);
             result = false;
        }
        return result;
    }
    
    // 파일업로드
    /**
  	 * @method	upload
  	 * @desc	원격지 파일업로드
  	 * @param   String fielName   : 파일 풀경로     (ex. /SKY/sky.txt)
  	 * @param   String remoteDir  : 원격지 디렉토리 (ex. /home/data/)
  	 * @param   String newFileName: 업로드할 파일명 (ex. sky_new.txt))
  	 * @return	N/A
  	 * @throws	Exception
  	 */ 
      public boolean upload(String fileName, String remoteDir, String newFileName) throws Exception {
          
          boolean result = false;

      	FileInputStream fis = null;
          // 앞서 만든 접속 메서드를 사용해 접속한다.
          sftpConnect(this.userName, this.host, this.port, this.password);
          try {
              // Change to output directory
              sftpChannel.cd(remoteDir);

              // Upload file
              File file = new File(fileName);
              // 입력 파일을 가져온다.
              fis = new FileInputStream(file);
              // 파일을 업로드한다.
              sftpChannel.put(fis, newFileName);

              result = true;
              System.out.println("File uploaded success - fileName : " + fileName + " - remoteDir : " + remoteDir + " - newFileName : " + newFileName);

          } catch (Exception e) {
              System.out.println("File uploaded fail - " + e);
          	result = false;
          } finally {
  			if (fis != null) {fis.close();}
  		}
          return result;
      }
    
    
    // 파일다운로드
      /**
  	 * @method	download
  	 * @desc	원격지 파일 다운로드
  	 * @param   String fielName   : 원격지 풀경로   (ex. /home/data/sky_new.txt)
  	 * @param   String localDir   : 다운받을 경로   (ex. /SKY/)
  	 * @return	N/A
  	 * @throws	Exception
  	 */ 
      public boolean download(String fileName, String localDir) throws Exception{
          boolean result = false;
          byte[] buffer = new byte[1024];
          BufferedInputStream bis = null;
          BufferedOutputStream bos = null;
          sftpConnect(this.userName, this.host, this.port, this.password);
          try {
              // Change to output directory
              String cdDir = fileName.substring(0, fileName.lastIndexOf("/") + 1);
              sftpChannel.cd(cdDir);

              File file = new File(fileName);
              bis = new BufferedInputStream(sftpChannel.get(file.getName()));

              File newFile = new File(localDir + "/" + file.getName());

              // Download file
              OutputStream os = new FileOutputStream(newFile);
              bos = new BufferedOutputStream(os);
              int readCount;
              while ((readCount = bis.read(buffer)) > 0) {
                  bos.write(buffer, 0, readCount);
              }
             
              result = true;
              System.out.println("File download success - fileName : " + fileName + " - localDir : " + localDir);

          } catch (Exception e) {
              System.out.println("File download fail - " + e);
          	result = false;
          } finally {
  			if (bis != null) {bis.close();}
  			if (bos != null) {bos.close();}
  		}
          return result;
      }
      
      
      
    // 폴더안에 있는 ﻿모든 파일 다운로드
      /**
     	 * @method	folderDownload
     	 * @desc	원격지 파일 폴더안에 모든 파일 다운로드
     	 * @param   String remoteDir      : 원격지 경로     (ex. /home/data/)
     	 * @param   String localDir       : 다운받을 경로   (ex. /SKY/)
     	 * @param   String fileSeparator  : 파일확장자      (ex. .txt)
     	 * @param   String backUpDir      : 백업 경로       (ex. /SKY/backup)
     	 * @return	N/A
     	 * @throws	Exception
     	 */ 
      @SuppressWarnings("unchecked")
  	public boolean folderDownload(String remoteDir, String localDir, String fileSeparator, String backUpDir) throws Exception{
          
      	boolean result = false;
      	
      	sftpConnect(this.userName, this.host, this.port, this.password);
      	
      	try {
  	    	sftpChannel.cd(remoteDir);
  	        
  	        Vector<ChannelSftp.LsEntry> entries = sftpChannel.ls("*" + fileSeparator);
  	        
  	        if (!entries.isEmpty()) { 
  	        
  		        for(ChannelSftp.LsEntry entry : entries) {
  		        	sftpChannel.get(entry.getFilename(), localDir + entry.getFilename());              // 로컬서버로 이동
  		        	sftpChannel.rename(entry.getFilename(), backUpDir + "use_" + entry.getFilename()); // 백업폴더로 이동(mv)하면서 파일이름앞에 use_ 붙혀서 이동하기
  		        }
  		        result = true;
  		        System.out.println("File folderDownload success - remoteDir : " + remoteDir + " - localDir : " + localDir + " - fileSeparator : " + fileSeparator + " - backUpDir : " + backUpDir);
  	        }
  	        
      	} catch (Exception e) {
      		System.out.println("File folderDownload fail - " + e);
      		result = false;
          }
      	return result;
      }
      
      
      // 원격지 파일 삭제
      public boolean remove(String filePath) throws Exception {
          boolean result = false;
          // 앞서 만든 접속 메서드를 사용해 접속한다.
          sftpConnect(this.userName, this.host, this.port, this.password);

          try {
              sftpChannel.rm(filePath);
              result = true;
              System.out.println("File remove success - " + filePath);
          } catch (Exception e) {
              System.out.println("File remove fail - " + e);
          	result = false; 
          }
          return result;
      }
      

    // 접속종료
    public void disconnect() {
        if(sesConnection.isConnected()){
            System.out.println("disconnecting...");
            sftpChannel.disconnect();
            channel.disconnect();
            sesConnection.disconnect();
        }
    }
}