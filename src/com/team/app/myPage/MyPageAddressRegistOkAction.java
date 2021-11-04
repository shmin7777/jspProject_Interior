package com.team.app.myPage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.myPage.dao.MyPageDAO;
import com.team.app.myPage.vo.MyPageAddressVO;

public class MyPageAddressRegistOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		
		MyPageAddressVO vo = new MyPageAddressVO();
		MyPageDAO dao = new MyPageDAO();
		ActionForward forward = new ActionForward();
		
		
		vo.setLocation_name(req.getParameter("location_name"));
		vo.setRecipient(req.getParameter("recipient"));
		vo.setUser_phone_no(req.getParameter("user_phone_no"));
		vo.setUser_zipcode(req.getParameter("user_zipcode"));
		vo.setUser_address(req.getParameter("user_address"));
		vo.setUser_address_detail(req.getParameter("user_address_detail"));
		vo.setUser_address_etc(req.getParameter("user_address_etc"));
		vo.setUser_id((String)req.getSession().getAttribute("session_id"));
		
		dao.registerAddress(vo);
		
		req.setAttribute("regist", vo);
		
		//forward : req객체 유지
		//redirect : req객체 초기화
		
		forward.setRedirect(false);
		forward.setPath("/app/myPage/address.jsp");
		
		return forward;
	}

}
