package com.team.app.brag.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.brag.board.dao.Brag_BoardDAO;

public class Brag_ReplyDeleteOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		int brag_reply_no =Integer.parseInt(req.getParameter("brag_reply_no"));
		
		Brag_BoardDAO b_dao = new Brag_BoardDAO();
		b_dao.deleteReplyByBragReplyNo(brag_reply_no);
		
		return null;
	}

}
