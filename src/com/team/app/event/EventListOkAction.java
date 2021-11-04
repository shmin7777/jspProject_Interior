package com.team.app.event;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.cs.board.vo.CS_BoardVO;
import com.team.app.event.dao.EventDAO;
import com.team.app.manage.vo.ManageEventVO;

public class EventListOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		EventDAO dao = new EventDAO();
		ActionForward forward = new ActionForward();
	
		String temp = req.getParameter("page");
		int page = temp == null ? 1 : Integer.parseInt(temp);
		int pageSize = 4;
		
		int endRow = page * pageSize;
		int startRow = endRow - (pageSize - 1);
		
		int totalCnt = dao.getTotal();

		int realEndPage = (totalCnt - 1) / pageSize + 1;
		int startPage = ((page - 1) / pageSize) * pageSize + 1;
		int endPage = startPage + 9;
		
		endPage = endPage > realEndPage ? realEndPage : endPage;
		
		
		req.setAttribute("totalCnt", totalCnt);
		req.setAttribute("realEndPage", realEndPage);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("nowPage", page);
		req.setAttribute("eventList", dao.getList(startRow, endRow));
		
		forward.setRedirect(false);
		forward.setPath("/app/community/event.jsp");
		
		return forward;
	}
}
