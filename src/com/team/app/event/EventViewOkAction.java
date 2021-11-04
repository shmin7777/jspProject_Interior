package com.team.app.event;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.event.dao.EventDAO;

public class EventViewOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		int event_no= Integer.parseInt(req.getParameter("event_no"));
		ActionForward forward = new ActionForward();
		EventDAO dao = new EventDAO();

		req.setAttribute("eventView", dao.getDetail(event_no)); //게시글 정보

		forward.setRedirect(false);
		forward.setPath("/app/community/eventView.jsp");
		
		return forward;
		
	}
	
}
