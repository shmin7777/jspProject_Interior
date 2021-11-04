package com.team.app.cc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.cc.dao.CcDAO;


public class CcViewOkAction implements Action {

	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		int cc_no = Integer.parseInt(req.getParameter("cc_no"));
		
		ActionForward forward = new ActionForward();
		CcDAO dao = new CcDAO();
		
		
		req.setAttribute("cc", dao.getDetail(cc_no)); //게시글 정보
		
		forward.setRedirect(false);
		forward.setPath("/app/cc/ccView.jsp");
		
		return forward;
	}
}
