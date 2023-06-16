package com.hworld.base.mail;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.hworld.base.service.MemberService;
import com.hworld.base.vo.MemberVO;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MailService {
	
	private final JavaMailSender javaMailSender;

    private static final String senderEmail= "Hworld55555@gmail.com";
    
    private static int number;
    
    //static을 왜 썼을까?
    private static String newPw;
    
    public static void createNumber(){
        number = (int)(Math.random() * (90000)) + 100000;// (int) Math.random() * (최댓값-최소값+1) + 최소값  
     }
    
//    public static void createPssword() {
//    	String newPw = RandomStringUtils.randomAlphanumeric(10);
//    }

     public MimeMessage CreateMail(String email){
         createNumber();
         MimeMessage message = javaMailSender.createMimeMessage();

         try {
             message.setFrom(senderEmail);
             message.setRecipients(MimeMessage.RecipientType.TO, email);
             message.setSubject("이메일 인증");
             String body = "";
             body += "<h3>" + "요청하신 인증 번호입니다." + "</h3>";
             body += "<h1>" + number + "</h1>";
             body += "<h3>" + "감사합니다." + "</h3>";
             message.setText(body,"UTF-8", "html");
         } catch (MessagingException e) {
             e.printStackTrace();
         }

         return message;
     }

     public int sendMail(String email){

         MimeMessage message = CreateMail(email);

         javaMailSender.send(message);

         return number;
     }
     
     
//미완성작업 
	public MimeMessage CreateMailPw(String email) throws Exception{
		
		MimeMessage message = javaMailSender.createMimeMessage();	    	        	   
		
		try {
			message.setFrom(senderEmail);
			message.setRecipients(MimeMessage.RecipientType.TO, email);
			message.setSubject("비밀번호 재발급");
			String body = "";
			body += "<h3>" + "재발급 된 비밀번호입니다." + "</h3>";
			body += "<h1>" + newPw + "</h1>";
			body += "<h3>" + "감사합니다." + "</h3>";
			message.setText(body,"UTF-8", "html");
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		
		return message;
	}
	
	public String sendMailPw(String email){
		MimeMessage message = CreateMail(email);
		
		javaMailSender.send(message);
		
		return newPw;
	}
	 
}
