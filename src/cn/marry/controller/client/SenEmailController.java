package cn.marry.controller.client;


import java.util.Calendar;
import java.util.Date;
import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.Part;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
@Controller
@RequestMapping("/email")
public class SenEmailController {
	@Autowired
    private JavaMailSender javaMailSender;

    

    @RequestMapping("/send")
    @ResponseBody
    public Boolean  senMsg(HttpSession httpSession, @RequestParam("email")String email) throws MessagingException{
        String Captcha = String.valueOf(new Random().nextInt(899999) + 100000);
        httpSession.setAttribute("Captcha",Captcha);
        MimeMessage message =  javaMailSender.createMimeMessage();
        message.addHeader("X-Mailer","Microsoft Outlook Express 6.00.2900.2869");
        message.setFrom("2251764112@qq.com");
        message.setRecipient(MimeMessage.RecipientType.TO, new InternetAddress(email));
        //主题
        message.setSubject("尊敬的The_Moon婚庆用户，您好：");
        //内容
        message.setText("您的验证码是："+Captcha+"出于安全原因，该验证码将于1分钟后失效。请勿将验证码透露给他人。");

        message.setSentDate(Calendar.getInstance().getTime());
        javaMailSender.send(message);
        return true;
        
      
    }

}
