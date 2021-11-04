package com.team.app.brag.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.brag.board.dao.Brag_BoardDAO;
import com.team.app.brag.board.dao.Brag_FilesDAO;

public class Brag_BoardViewOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		int brag_board_no = Integer.parseInt(req.getParameter("brag_board_no"));
															
		ActionForward forward = new ActionForward();
		Brag_BoardDAO b_dao = new Brag_BoardDAO();
		Brag_FilesDAO f_dao = new Brag_FilesDAO();
		
		req.setAttribute("brag_board", b_dao.getDetail(brag_board_no)); //게시글 정보
		req.setAttribute("files", f_dao.getFiles(brag_board_no)); //게시글에 업로드된 첨부파일 리스트
		
		forward.setRedirect(false);
		forward.setPath("/app/community/brag_boardView.jsp");
		
		return forward;
	}

}
