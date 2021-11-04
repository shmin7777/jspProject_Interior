package com.team.app.cs.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.cs.board.dao.CS_BoardDAO;

public class CS_EditAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		int cs_board_no = Integer.parseInt(req.getParameter("cs_board_no"));
		ActionForward forward = new ActionForward();
		CS_BoardDAO dao = new CS_BoardDAO();
		
		req.setAttribute("cs_board", dao.getDetail(cs_board_no));

		forward.setRedirect(false);
		forward.setPath("/app/customerService/cs_edit.jsp");
		
		return forward;
	}

}
