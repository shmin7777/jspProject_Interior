package com.team.app.notice;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.manage.vo.ManageNoticeVO;
import com.team.app.notice.dao.NoticeDAO;

public class NoticeListOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		NoticeDAO dao = new NoticeDAO();

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
		
		List<ManageNoticeVO> list = dao.getList(startRow, endRow);
		
		req.setAttribute("totalCnt", totalCnt);
		req.setAttribute("realEndPage", realEndPage);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("nowPage", page);
		req.setAttribute("boardList", list);
		
		forward.setRedirect(false);
		forward.setPath("/app/customerService/notice.jsp");

		return forward;
	}

}
