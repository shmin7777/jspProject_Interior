package com.team.app.payment;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.store.dao.StoreDAO;
import com.team.app.store.vo.StoreVO;
import com.team.app.user.dao.UserDAO;

public class PaymentAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		ActionForward forward = new ActionForward();
		StoreDAO s_dao = new StoreDAO(); 
		StoreVO s_vo = new StoreVO();
		UserDAO u_dao = new UserDAO();
		
		int product_no =  Integer.parseInt(req.getParameter("product_no"));
		
		s_vo=s_dao.getDetail(product_no);
	
		req.setAttribute("product", s_vo);
		req.setAttribute("cnt", Integer.parseInt(req.getParameter("count")));
		req.setAttribute("user", u_dao.getUser((String)req.getSession().getAttribute("session_id")));
		forward.setRedirect(false);
		forward.setPath("/app/payment/payment.jsp");
		return forward;
	}

}
