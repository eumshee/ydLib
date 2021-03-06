package com.yd.lib.users.email;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yd.lib.users.email.Gmail;
import com.yd.lib.users.email.SHA256;

import org.apache.velocity.tools.view.WebappUberspector.SetAttributeExecutor;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import java.util.*;

@WebServlet("/sendEmail.do")
public class SendEmail extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

//사용자에게 보낼 메시지를 기입합니다.
		String host = "database-1.cujgaabefr8x.ap-northeast-2.rds.amazonaws.com/lib/";
		String from = "wjsgudals6@gmail.com";
		String to = request.getParameter("email");
		String subject = "예담도서관 회원가입을 위한 코드 확인 메일입니다.";
		String code = new SHA256().getSHA256(to);
		String content = "입력하실 코드는 " + code + " 입니다.";

// SMTP에 접속하기 위한 정보를 기입합니다.

		Properties p = new Properties();
		p.put("mail.smtp.user", from);
		p.put("mail.smtp.host", "smtp.googlemail.com");
		p.put("mail.smtp.port", "456");
		p.put("mail.smtp.starttls.enable", "true");
		p.put("mail.smtp.auth", "true");
		p.put("mail.smtp.debug", "true");
		p.put("mail.smtp.socketFactory.port", "465");
		p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		p.put("mail.smtp.socketFactory.fallback", "false");

		try {
			Authenticator auth = new Gmail();
			Session ses = Session.getInstance(p, auth);
			ses.setDebug(true);
			MimeMessage msg = new MimeMessage(ses);
			msg.setSubject(subject);
			Address fromAddr = new InternetAddress(from);
			msg.setFrom(fromAddr);
			Address toAddr = new InternetAddress(to);
			msg.addRecipient(Message.RecipientType.TO, toAddr);
			msg.setContent(content, "text/html;charset=UTF8");
			Transport.send(msg);

		} catch (Exception e) {
			e.printStackTrace();
			response.getWriter().print("오류가 발생했습니다.");
			return;
		}
		response.getWriter().print(code);
	}

}
