package com.team.app.myPage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.cs.board.vo.CS_BoardVO;
import com.team.app.myPage.dao.MyPageDAO;
import com.team.app.myPage.vo.MyPageCartVO;
import com.team.app.store.dao.StoreDAO;
import com.team.app.store.vo.StoreVO;

public class MyPageCartListOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		ActionForward forward = new ActionForward();
		StoreDAO s_dao = new StoreDAO();
		MyPageDAO m_dao = new MyPageDAO();
		
		String user_id = (String)req.getSession().getAttribute("session_id");
		
		String temp = req.getParameter("page");
		int page = temp == null ? 1 : Integer.parseInt(temp);
		int pageSize = 10;

		int endRow = page * pageSize;
		int startRow = endRow - (pageSize - 1);

		int totalCnt = m_dao.cartGetTotal(user_id);

		int realEndPage = (totalCnt - 1) / pageSize + 1;
		int startPage = ((page - 1) / pageSize) * pageSize + 1;
		int endPage = startPage + 9;

		endPage = endPage > realEndPage ? realEndPage : endPage;
		
		List<MyPageCartVO> list = m_dao.getCart(startRow, endRow, user_id);
		
		req.setAttribute("totalCnt", totalCnt);
		req.setAttribute("realEndPage", realEndPage);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("nowPage", page);
		req.setAttribute("cartList", list);
		
			
		forward.setRedirect(false);
		if(totalCnt == 0) {
			forward.setPath("/app/myPage/emptyCart.jsp");
		}else {
			forward.setPath("/app/myPage/cart.jsp");
		}
		return forward;
	}

}
