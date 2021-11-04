package com.team.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.user.dao.UserDAO;
import com.team.app.user.vo.UserVO;

public class UserJoinOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		UserDAO dao = new UserDAO();
		UserVO vo = new UserVO();
		ActionForward forward = new ActionForward();
		
		vo.setUser_id(req.getParameter("user_id"));
		vo.setUser_pw(req.getParameter("user_pw"));
		vo.setUser_phone_no(req.getParameter("user_phone_no"));
		vo.setUser_email(req.getParameter("email") + "@" +req.getParameter("email_detail"));
		vo.setUser_name(req.getParameter("user_name"));
		
	
		
		dao.insertUser(vo);
		
		forward.setRedirect(true);
		forward.setPath(req.getContextPath()+"/user/UserLogin.me");
		return forward;
	}

}
