package com.team.app.brag.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.brag.board.dao.Brag_BoardDAO;
import com.team.app.brag.board.vo.Brag_ReplyVO;

public class Brag_ReplyEditOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		Brag_BoardDAO b_dao = new Brag_BoardDAO();
		Brag_ReplyVO reply = new Brag_ReplyVO();
		
		int brag_reply_no = Integer.parseInt(req.getParameter("brag_reply_no"));
		String brag_reply_content = req.getParameter("content");
		
		reply.setBrag_reply_no(brag_reply_no);
		reply.setBrag_reply_content(brag_reply_content);
		
		b_dao.updateReply(reply);
		
		return null;
	}

}
