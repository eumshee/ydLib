package com.yd.lib.users.web;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yd.lib.users.serviceImpl.UsersServiceImpl;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Controller
public class SMSController {

	@Autowired
	private UsersServiceImpl UsersDAO;
	
	@RequestMapping("/sendSMS.do")
	@ResponseBody
	public String sendSMS(HttpServletRequest req) {
		
	String targetNum = req.getParameter("tel");
	
	double rValue = Math.random();
	String code = Double.toString(rValue);
	String textCode= code.substring(2,7);
	
	String api_key = "NCSNG1P220XTIHP6";
	String api_secret = "VMA43NXXJJYXDZVE9IHBTSIETSXHBKTO";
	Message coolsms = new Message(api_key, api_secret);
	
	HashMap<String, String> params = new HashMap<String, String>();
	params.put("to", targetNum);
	params.put("from", "01029532154");
	params.put("type", "SMS");
	params.put("text", "인증번호를 입력해주세요: " + textCode);
	params.put("yedamLib", "yedamLib v1.0"); // application name and version
	
	System.out.println(params.get("text"));
	
	
	try {
		JSONObject obj = (JSONObject) coolsms.send(params);
		System.out.println(obj.toString());
	} catch (CoolsmsException e) {
		System.out.println(e.getMessage());
		System.out.println(e.getCode());
	}
	
	return textCode;
	
	}
	
	@RequestMapping("/samePhoneCheck.do")
	@ResponseBody
	public int samePhoneCheck(HttpServletRequest request) {
			
		String tel = request.getParameter("tel");
		
		int cnt = 0;
		if(UsersDAO.phoneCheck(tel) != null) {
			cnt = 1;
		}
		
		return cnt;
	}
	
}
