package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import jakarta.mail.internet.MimeMessage;

@Service
public class EmailManager
{

 
     @Autowired
      JavaMailSender mail;
      public String sendEmail(String fromemail,String toemail,String subject,String text,String htmlContent)
      {
        try
        {
          MimeMessage message = mail.createMimeMessage();
          MimeMessageHelper smm = new MimeMessageHelper(message, true);
          //SimpleMailMessage smm=new SimpleMailMessage();
          smm.setFrom(fromemail);
          smm.setTo(toemail);
          smm.setSubject(subject);
          smm.setText(htmlContent,true);
          
          
          String absoluteFilePath = "E:/3_1/JFSD/DEMOWORKSPACE/SDP/src/main/webapp/images/payment.png";

          FileSystemResource file = new FileSystemResource(absoluteFilePath);
          //smm.addAttachment("login.jpg", file);
          smm.addInline("logo", file);
          
            mail.send(message);
            System.out.println("Email sent");
          return "email sent Successfully";
        }
        catch (Exception e) 
        {
          System.out.println(e);
          return e.getMessage();
        }
}
}