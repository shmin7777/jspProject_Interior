package com.team.app.cs.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.cs.board.dao.CS_BoardDAO;
import com.team.app.cs.board.dao.CS_FilesDAO;
import com.team.app.cs.board.vo.CS_BoardVO;

public class CS_BoardViewOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		int cs_board_no = Integer.parseInt(req.getParameter("cs_board_no"));
															
		ActionForward forward = new ActionForward();
		CS_BoardDAO cs_dao = new CS_BoardDAO();
		CS_FilesDAO f_dao = new CS_FilesDAO();
		
		req.setAttribute("cs_board", cs_dao.getDetail(cs_board_no)); //게시글 정보
		req.setAttribute("files", f_dao.getFiles(cs_board_no)); //게시글에 업로드된 첨부파일 리스트
		
		forward.setRedirect(false);
		forward.setPath("/app/customerService/cs_boardView.jsp");
		
		return forward;
	}

}
