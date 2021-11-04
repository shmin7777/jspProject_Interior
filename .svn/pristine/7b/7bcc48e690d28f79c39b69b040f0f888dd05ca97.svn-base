package com.team.app.store;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.store.dao.StoreDAO;

public class productViewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		StoreDAO dao = new StoreDAO();
		ActionForward forward = new ActionForward();
		int product_no = Integer.parseInt(req.getParameter("product_no"));
		
		req.setAttribute("StDetail", dao.getDetail(product_no));
		forward.setRedirect(false);
		forward.setPath("/app/store/productView.jsp");
		return forward;
	}

}
