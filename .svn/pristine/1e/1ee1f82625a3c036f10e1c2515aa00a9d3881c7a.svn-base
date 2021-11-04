package com.team.app.manage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.user.dao.UserDAO;

public class ManageLoginOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {

	      UserDAO dao = new UserDAO();
	      ActionForward forward = new ActionForward();
	      HttpSession session = req.getSession();
	      
	      String id = req.getParameter("id");
	      
	      boolean loginCheck = dao.adminLogin(id, req.getParameter("pw"));
	      
	      forward.setRedirect(true);
	      if(loginCheck) {
	         session.setAttribute("session_id", id);
	         forward.setPath(req.getContextPath()+"/app/manage/manageHome.jsp");
	      }else {
	         forward.setPath(req.getContextPath()+"/manage/ManageLogin.mn?code="+1);
	         
	      }
	      return forward;
	   
	}

}
