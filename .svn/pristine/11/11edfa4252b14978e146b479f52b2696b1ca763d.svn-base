package com.team.app.user;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.user.dao.UserDAO;

public class UserCheckIdOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String id = req.getParameter("user_id");
		UserDAO dao = new UserDAO();
		PrintWriter out = resp.getWriter();
		
		JSONObject obj = new JSONObject();
		
		if(dao.checkId(id)) {
//			out.println("non-ok");
			obj.put("status", "ok");
		}else {
			obj.put("status", "not-ok");
//			out.println("ok");
		}
		out.println(obj.toJSONString());
		out.close();
		return null;
	}

}
