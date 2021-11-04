package com.team.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.user.dao.UserDAO;

public class UserUpdateProfileAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		String user_id = (String)req.getSession().getAttribute("session_id");
		ActionForward forward = new ActionForward();
		UserDAO dao = new UserDAO();
		
		req.setAttribute("userProfile",dao.getUser(user_id));
		
		forward.setRedirect(false);
		forward.setPath("/app/myPage/updateProfile.jsp");
		
		return forward;
	}

}
