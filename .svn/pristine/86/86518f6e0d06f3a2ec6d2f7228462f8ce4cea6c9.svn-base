package com.team.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.user.dao.UserDAO;

public class UserDeleteAccountOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		UserDAO dao = new UserDAO();
		ActionForward forward = new ActionForward();
		HttpSession session = req.getSession();
		
		String user_id = (String)req.getSession().getAttribute("session_id");
		
		dao.deleteAccount(user_id);
		
		session.invalidate();
		
		forward.setRedirect(true);
		forward.setPath(req.getContextPath() + "/app/main/index.jsp");
		
		return forward;
	}

}
