package com.team.app.payment;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.payment.dao.PaymentDAO;
import com.team.app.payment.vo.PaymentVO;

public class PaymentOKAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		PaymentDAO dao = new PaymentDAO();
		PaymentVO vo = new PaymentVO();
		ActionForward forward = new ActionForward();
		req.setCharacterEncoding("UTF-8");
		
		
		int total_price = Integer.parseInt(req.getParameter("product_price"))*Integer.parseInt(req.getParameter("product_cnt")) 
							-Integer.parseInt(req.getParameter("pay_point"));

		vo.setUser_id((String)req.getSession().getAttribute("session_id"));
		vo.setPay_name(req.getParameter("pay_name"));
		vo.setPay_phone(req.getParameter("pay_phone"));
		vo.setPay_zipcode(req.getParameter("pay_zipcode"));
		vo.setPay_address(req.getParameter("pay_address"));
		vo.setPay_address_detail(req.getParameter("pay_address_detail"));
		vo.setPay_address_etc(req.getParameter("pay_address_etc"));
		vo.setPay_request(req.getParameter("pay_request"));
		vo.setProduct_no(Integer.parseInt(req.getParameter("product_no")));
		vo.setProduct_name(req.getParameter("product_name"));
		vo.setProduct_price(Integer.parseInt(req.getParameter("product_price")));
		vo.setProduct_cnt(Integer.parseInt(req.getParameter("product_cnt")));
		vo.setProduct_img(req.getParameter("product_img"));
		vo.setPay_point(Integer.parseInt(req.getParameter("pay_point")));
		vo.setPay_way(req.getParameter("pay_way"));
		vo.setPay_total_price(total_price);
		
		dao.addPay(vo);
		
		req.setAttribute("payVO", vo);
		
		forward.setRedirect(false);
		forward.setPath("/store/productView.st");
		return forward;
	}

}
