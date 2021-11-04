package com.team.app.brag.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.brag.board.dao.Brag_BoardDAO;
import com.team.app.brag.board.vo.Brag_ReplyVO;

public class Brag_ReplyWriteOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		int brag_board_no = Integer.parseInt(req.getParameter("brag_board_no"));
		String user_id = (String)req.getSession().getAttribute("session_id");
		String brag_reply_content = req.getParameter("content");
		System.out.println(brag_reply_content);
		
		Brag_ReplyVO reply = new Brag_ReplyVO();
		Brag_BoardDAO dao = new Brag_BoardDAO();
		
		reply.setBrag_board_no(brag_board_no);
		reply.setUser_id(user_id);
		reply.setBrag_reply_content(brag_reply_content);
		reply.setUser_no(dao.get_user_no(user_id));
		dao.insertReply(reply);
		return null;
	}

}
