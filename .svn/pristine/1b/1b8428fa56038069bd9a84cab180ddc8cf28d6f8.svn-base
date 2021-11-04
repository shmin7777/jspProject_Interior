package com.team.app.myPage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.myPage.dao.MyPageDAO;
import com.team.app.myPage.vo.MyPageAddressVO;

public class MyPageAddressListOkAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		MyPageDAO dao = new MyPageDAO();
		ActionForward forward = new ActionForward();
		
		
		req.setAttribute("addressList", dao.showAddress((String)req.getSession().getAttribute("session_id")));
		
		forward.setRedirect(false);
		forward.setPath("/app/myPage/address.jsp");
		
		return forward;
	}

}
