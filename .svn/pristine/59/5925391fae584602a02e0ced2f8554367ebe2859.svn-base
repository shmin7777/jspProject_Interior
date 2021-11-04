package com.team.app.store;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.store.dao.StoreDAO;
import com.team.app.store.vo.StoreReviewVO;

public class Product_ReplyWriteOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		StoreReviewVO vo = new StoreReviewVO();
		StoreDAO dao = new StoreDAO();
		
		int product_no = Integer.parseInt(req.getParameter("product_no"));
		String user_id = (String)req.getSession().getAttribute("session_id");
		String pro_reply_content = req.getParameter("content");
		int product_star = Integer.parseInt(req.getParameter("product_star"));
		
		vo.setUser_id(user_id);
		vo.setProduct_no(product_no);
		vo.setProduct_star(product_star);
		vo.setPro_reply_content(pro_reply_content);
		dao.addProductReply(vo);
		
		
		return null;
	}

}
