package com.team.app.store;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.store.dao.StoreDAO;
import com.team.app.store.vo.StoreBestOfVO;
import com.team.app.store.vo.StoreVO;

public class StorefurnitureOKAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		ActionForward forward = new ActionForward();
		StoreDAO dao = new StoreDAO();

		List<StoreBestOfVO> list = dao.getBestOf("가구");

		String temp = req.getParameter("page");
		int page = temp == null ? 1 : Integer.parseInt(temp);
		int pageSize = 8;
		
		int endRow = page * pageSize;
		int startRow = endRow - (pageSize - 1);
		
		int totalCnt = dao.getTotal("가구");
		
		int realEndPage = (totalCnt - 1) / pageSize + 1;
		int startPage = ((page - 1) / pageSize) * pageSize + 1;
		int endPage = startPage + 7;
		
		endPage = endPage > realEndPage ? realEndPage : endPage;
		List<StoreVO> product = dao.getStoreCategory("가구", startRow, endRow);
		
		String product_subcategory = req.getParameter("PRODUCT_SUBCATEGORY");
		
		if (product_subcategory == null) {
			req.setAttribute("StoreList", product);
			req.setAttribute("StoreBest", list);

		} else {
			req.setAttribute("StoreList", dao.getStoreSubCategory("가구", product_subcategory));
			req.setAttribute("StoreBest", list);
		}

		req.setAttribute("totalCnt", totalCnt);
		req.setAttribute("realEndPage", realEndPage);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("nowPage", page);
		
		forward.setRedirect(false);
		forward.setPath("/app/store/furniture.jsp");
		return forward;
	}

}
