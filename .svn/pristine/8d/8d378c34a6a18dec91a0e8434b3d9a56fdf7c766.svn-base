package com.team.app.cs.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.cs.board.dao.CS_BoardDAO;

public class CS_ReplyDeleteOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		int cs_reply_no =Integer.parseInt(req.getParameter("cs_reply_no"));
		
		CS_BoardDAO cs_dao = new CS_BoardDAO();
		cs_dao.deleteReplyByCSReplyNo(cs_reply_no);
		
		return null;
	}

}
