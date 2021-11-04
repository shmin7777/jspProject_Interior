package com.team.app.cs.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.cs.board.dao.CS_BoardDAO;
import com.team.app.cs.board.vo.CS_ReplyVO;

public class CS_ReplyWriteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		int cs_board_no = Integer.parseInt(req.getParameter("cs_board_no"));
		String user_id = (String)req.getSession().getAttribute("session_id");
		String cs_reply_content = req.getParameter("content");
		
		CS_ReplyVO reply = new CS_ReplyVO();
		CS_BoardDAO dao = new CS_BoardDAO();
		
		reply.setCs_board_no(cs_board_no);
		reply.setUser_id(user_id);
		reply.setCs_reply_content(cs_reply_content);
		reply.setUser_no(dao.get_user_no(user_id));
		dao.insertReply(reply);
		return null;
	}

}
