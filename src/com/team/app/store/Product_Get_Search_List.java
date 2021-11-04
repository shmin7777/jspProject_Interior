package com.team.app.store;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.store.dao.StoreDAO;

public class Product_Get_Search_List implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		ActionForward forward = new ActionForward();
		StoreDAO dao = new StoreDAO();
		String product_name = req.getParameter("s_keyword");
		if(product_name==null) {
			forward.setRedirect(true);
			forward.setPath("./");
			return forward;
		}else {
			req.setAttribute("StoreList", dao.getStoreSearch(product_name));
			
			forward.setRedirect(false);
			if(product_name.equals("") || product_name == null) {
				forward.setPath("/app/store/noResult.jsp");
			}else {
			forward.setPath("/app/store/props.jsp");
			}
			return forward;
		}
	}
}
