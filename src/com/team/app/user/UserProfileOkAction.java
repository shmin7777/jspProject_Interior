package com.team.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.user.dao.UserDAO;
import com.team.app.user.vo.UserVO;

public class UserProfileOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		String user_id = (String)req.getSession().getAttribute("session_id");
		ActionForward forward = new ActionForward();
		UserDAO dao = new UserDAO();
		UserVO vo = new UserVO();
		
		vo = dao.getUser(user_id);
		req.setAttribute("viewProfile", vo);
		
		forward.setRedirect(false);
		forward.setPath("/app/myPage/myProfile.jsp");
		
		return forward;
	}

}
