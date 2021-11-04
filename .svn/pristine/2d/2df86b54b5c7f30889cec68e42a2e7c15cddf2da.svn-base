package com.team.app.myPage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.cc.vo.CcVO;
import com.team.app.consult.dao.ConsultDAO;
import com.team.app.consult.vo.ConsultVO;
import com.team.app.myPage.dao.MyPageDAO;

public class MyPageConsultListOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
			ActionForward forward = new ActionForward();
			MyPageDAO dao = new MyPageDAO();
			
			String user_id = (String)req.getSession().getAttribute("session_id");
			
			String temp = req.getParameter("page");
			int page = temp == null ? 1 : Integer.parseInt(temp);
			int pageSize = 10;

			int endRow = page * pageSize;
			int startRow = endRow - (pageSize - 1);

			int totalCnt = dao.consultGetTotal(user_id);

			int realEndPage = (totalCnt - 1) / pageSize + 1;
			int startPage = ((page - 1) / pageSize) * pageSize + 1;
			int endPage = startPage + 9;

			endPage = endPage > realEndPage ? realEndPage : endPage;
			
			List<ConsultVO> list = dao.showConsultList(user_id, startRow, endRow);
			
			
			req.setAttribute("totalCnt", totalCnt);
			req.setAttribute("realEndPage", realEndPage);
			req.setAttribute("startPage", startPage);
			req.setAttribute("endPage", endPage);
			req.setAttribute("nowPage", page);
			req.setAttribute("consultList", list);
			
			forward.setRedirect(false);
			forward.setPath("/app/myPage/myConsult.jsp");
			
			return forward;
			
		}
}
