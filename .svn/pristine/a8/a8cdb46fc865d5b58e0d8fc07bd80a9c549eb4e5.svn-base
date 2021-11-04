package com.team.app.brag.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.brag.board.dao.Brag_BoardDAO;

public class Brag_EditAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		int brag_board_no = Integer.parseInt(req.getParameter("brag_board_no"));
		ActionForward forward = new ActionForward();
		Brag_BoardDAO dao = new Brag_BoardDAO();
		
		req.setAttribute("brag_board", dao.getDetail(brag_board_no));

		forward.setRedirect(false);
		forward.setPath("/app/community/brag_edit.jsp");
		
		return forward;
	}

}
