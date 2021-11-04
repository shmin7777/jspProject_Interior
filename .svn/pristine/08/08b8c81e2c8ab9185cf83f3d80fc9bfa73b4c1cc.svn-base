package com.team.app.myPage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.myPage.dao.MyPageDAO;
import com.team.app.myPage.vo.MyPageCartVO;
import com.team.app.payment.dao.PaymentDAO;
import com.team.app.payment.vo.PaymentVO;
import com.team.app.store.dao.StoreDAO;
import com.team.app.store.vo.StoreVO;

public class MyPageCartInsertOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		ActionForward forward = new ActionForward();
		
		
		StoreDAO s_dao = new StoreDAO();
		StoreVO s_vo = new StoreVO();
		MyPageDAO m_dao = new MyPageDAO();
		MyPageCartVO m_vo = new MyPageCartVO();
		PaymentDAO p_dao = new PaymentDAO();
		PaymentVO p_vo = new PaymentVO();

		int product_no = Integer.parseInt(req.getParameter("product_no"));
		
		s_vo = s_dao.getDetail(product_no);
		
		m_vo.setProduct_name(s_vo.getProduct_name());
		m_vo.setProduct_no(s_vo.getProduct_no());
		m_vo.setProduct_price(s_vo.getProduct_price());
		m_vo.setUser_id((String)req.getSession().getAttribute("session_id"));
		m_vo.setCart_quantity(Integer.parseInt(req.getParameter("count")));
		
		m_dao.addCart(m_vo);
		
		forward.setRedirect(false);
		forward.setPath("/store/productView.st");
		return forward;
	}

}
