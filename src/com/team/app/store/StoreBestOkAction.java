package com.team.app.store;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.store.dao.StoreDAO;
import com.team.app.store.vo.StoreBestOfVO;

public class StoreBestOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		ActionForward forward = new ActionForward();
		StoreDAO dao = new StoreDAO();
		
		List<StoreBestOfVO> list = dao.getBest();
	
		
		req.setAttribute("StoreBest", list);
					
		forward.setRedirect(false);
		forward.setPath("/app/store/bestSeller.jsp");
		return forward;
	}

}
