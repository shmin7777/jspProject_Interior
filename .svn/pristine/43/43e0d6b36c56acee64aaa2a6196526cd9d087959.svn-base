package com.team.app.myPage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.brag.board.vo.Brag_BoardVO;
import com.team.app.cs.board.vo.CS_BoardVO;
import com.team.app.myPage.dao.MyPageDAO;
import com.team.app.user.dao.UserDAO;
import com.team.app.user.vo.UserVO;

public class MyPageInquireListOkAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		MyPageDAO dao = new MyPageDAO();
		ActionForward forward = new ActionForward();
		UserDAO u_dao = new UserDAO();
		UserVO u_vo = new UserVO();
		
		String user_id = (String)req.getSession().getAttribute("session_id");
		
		u_vo = u_dao.getUser(user_id);
		
		int user_no = u_vo.getUser_no();
		
		String temp = req.getParameter("page");
		int page = temp == null ? 1 : Integer.parseInt(temp);
		int pageSize = 10;

		int endRow = page * pageSize;
		int startRow = endRow - (pageSize - 1);

		int totalCnt = dao.inquireGetTotal(u_vo.getUser_no());

		int realEndPage = (totalCnt - 1) / pageSize + 1;
		int startPage = ((page - 1) / pageSize) * pageSize + 1;
		int endPage = startPage + 9;

		endPage = endPage > realEndPage ? realEndPage : endPage;
		
		List<CS_BoardVO> list = dao.showInquireList(user_no, startRow, endRow);
		
		req.setAttribute("totalCnt", totalCnt);
		req.setAttribute("realEndPage", realEndPage);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("nowPage", page);
		req.setAttribute("inquireList", list);
		req.setAttribute("user_id", u_vo.getUser_id());
		
		forward.setRedirect(false);
		forward.setPath("/app/myPage/myInquire.jsp");
		
		return forward;
		
	}

}
