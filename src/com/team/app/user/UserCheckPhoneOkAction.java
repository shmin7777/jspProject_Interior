package com.team.app.user;

import java.util.HashMap;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.team.action.Action;
import com.team.action.ActionForward;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

public class UserCheckPhoneOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
	      String api_key = "NCSPXJAI8KUYFXW1";
	      String api_secret = "JTIIFHDRFDVU0U04GWVPJGJYRIIQXKSA";
	      Message coolsms = new Message(api_key, api_secret);
	      String data = "0123456789";
	      String number = "";
	      Random r = new Random();
	      
	      for (int i = 0; i < 6; i++) {
	         number += data.charAt(r.nextInt(data.length()));
	      }
	      
	      resp.getWriter().print(number);
	      
	      // 4 params(to, from, type, text) are mandatory. must be filled
	      HashMap<String, String> params = new HashMap<String, String>();
	      params.put("to", req.getParameter("user_phone_no"));// phoneNumber
	      params.put("from", "01029885207");
	      params.put("type", "SMS");
	      params.put("text", "본인인증번호는 " + number + "입니다. 정확히 입력해주세요.");
	      params.put("app_version", "test app 1.2"); // application name and version
	      
	      try {
	         JSONObject obj = (JSONObject) coolsms.send(params);
	         System.out.println(obj.toString());
	      } catch (CoolsmsException e) {
	         System.out.println(e.getMessage());
	         System.out.println(e.getCode());
	      }
	      
	      req.setAttribute("number", number);
	      
		return null;
	}
//  window.open()
//  opner.submit();
//  결제가 성공하면 서브밋
//  실패하면 팝업창 닫기 구글링
}
