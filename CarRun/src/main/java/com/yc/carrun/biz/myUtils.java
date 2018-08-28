package com.yc.carrun.biz;

import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.Properties;
import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
 
public class myUtils {
	public String MyEmail="qq29364@163.com";
	public String MyEmailPwd="cyh085813";
	public String MyEmailHost="smtp.163.com";
	
 
public  String sendMail(String receiveMail){
	Random r=new Random();
	StringBuffer sbf=new StringBuffer();
	int count=0;
	while(count<=5){
		sbf.append(r.nextInt(10));
		count++;
	}
	String code=sbf.toString();
	System.out.println(code);
	try {
		Properties props=new Properties();
		props.setProperty("mail.transport.protocol", "smtp");
		props.setProperty("mail.smtp.host",MyEmailHost);
		props.setProperty("mail.smtp.auth","true");
		Session session=Session.getInstance(props);
		MimeMessage message=new MimeMessage(session);
		message.setFrom(new InternetAddress(MyEmail,"佳藻鸿车辆销售公司","UTF-8"));
		message.setRecipient(MimeMessage.RecipientType.TO,new InternetAddress(receiveMail,"用户","UTF-8"));
	message.setSubject("pin");
	message.setContent("您的验证码为："+code,"text/html;charset=UTF-8");
	message.setSentDate(new Date());
	message.saveChanges();
	Transport transport =session.getTransport();
	transport.connect(MyEmail,MyEmailPwd);
	transport.sendMessage(message,message.getAllRecipients());
	transport.close();
	} catch (UnsupportedEncodingException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (MessagingException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return code;
	}
}
 