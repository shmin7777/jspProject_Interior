package com.team.app.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.cs.board.dao.CS_BoardDAO;
import com.team.app.cs.board.dao.CS_FilesDAO;
import com.team.app.notice.dao.NoticeDAO;

public class NoticeViewOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		int notice_no = Integer.parseInt(req.getParameter("notice_no"));
		
		ActionForward forward = new ActionForward();
		NoticeDAO dao = new NoticeDAO();
		
		
		req.setAttribute("notice", dao.getDetail(notice_no)); //게시글 정보
		
		forward.setRedirect(false);
		forward.setPath("/app/customerService/noticeView.jsp");
		
		return forward;
	}

}
