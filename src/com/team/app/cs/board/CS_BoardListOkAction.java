package com.team.app.cs.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.cs.board.dao.CS_BoardDAO;
import com.team.app.cs.board.vo.CS_BoardVO;

public class CS_BoardListOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		CS_BoardDAO dao = new CS_BoardDAO();
		ActionForward forward = new ActionForward();
		
		String temp = req.getParameter("page");
		int page = temp == null ? 1 : Integer.parseInt(temp);
		int pageSize = 10;

		int endRow = page * pageSize;
		int startRow = endRow - (pageSize - 1);

		int totalCnt = dao.getTot("cs_board_select");

		int realEndPage = (totalCnt - 1) / pageSize + 1;
		int startPage = ((page - 1) / pageSize) * pageSize + 1;
		int endPage = startPage + 9;

		endPage = endPage > realEndPage ? realEndPage : endPage;
		
		List<CS_BoardVO> list = dao.getList(startRow, endRow);
		
		String cs_board_select = req.getParameter("CS_BOARD_SELECT");
		
		if (cs_board_select==null) {
			req.setAttribute("boardList", list);
		}else {
			req.setAttribute("boardList", dao.getCategory(cs_board_select));
		}
		
		req.setAttribute("totalCnt", totalCnt);
		req.setAttribute("realEndPage", realEndPage);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("nowPage", page);
		/*req.setAttribute("boardList", list);*/
		
		forward.setRedirect(false);
		forward.setPath("/app/customerService/cs_boardList.jsp");

		return forward;

	}

}
