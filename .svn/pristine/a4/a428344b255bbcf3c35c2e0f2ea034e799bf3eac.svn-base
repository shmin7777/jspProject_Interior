package com.team.app.brag.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.brag.board.dao.Brag_BoardDAO;
import com.team.app.brag.board.vo.Brag_BoardVO;

public class Brag_BoardListOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		Brag_BoardDAO dao = new Brag_BoardDAO();
		ActionForward forward = new ActionForward();
		
		String temp = req.getParameter("page");
		int page = temp == null ? 1 : Integer.parseInt(temp);
		int pageSize = 10;

		int endRow = page * pageSize;
		int startRow = endRow - (pageSize - 1);

		int totalCnt = dao.getTotal();

		int realEndPage = (totalCnt - 1) / pageSize + 1;
		int startPage = ((page - 1) / pageSize) * pageSize + 1;
		int endPage = startPage + 9;

		endPage = endPage > realEndPage ? realEndPage : endPage;
		
		List<Brag_BoardVO> list = dao.getList(startRow, endRow);
		
		req.setAttribute("totalCnt", totalCnt);
		req.setAttribute("realEndPage", realEndPage);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("nowPage", page);
		req.setAttribute("boardList", list);
		
		forward.setRedirect(false);
		forward.setPath("/app/community/brag_boardList.jsp");

		return forward;

	}

}
