package com.team.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.user.dao.UserDAO;
import com.team.app.user.vo.UserVO;

public class UserUpdateProfileOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		ActionForward forward = new ActionForward();
		UserDAO dao = new UserDAO();
		UserVO vo = new UserVO();
		
		String user_id = (String)req.getSession().getAttribute("session_id");

		vo.setUser_id(user_id);
		try {
			vo.setUser_email(req.getParameter("email") + "@" +req.getParameter("email_detail"));
			vo.setUser_phone_no(req.getParameter("user_phone_no"));
			vo.setUser_zipcode(req.getParameter("user_zipcode"));
			vo.setUser_address(req.getParameter("user_address"));
			vo.setUser_address_detail(req.getParameter("user_address_detail"));
			vo.setUser_address_etc(req.getParameter("user_address_etc"));
		} catch (Exception e) {
			vo = dao.getUser(user_id);
			
			vo.setUser_email(vo.getUser_email());
			vo.setUser_phone_no(vo.getUser_phone_no());
			vo.setUser_zipcode(vo.getUser_zipcode());
			System.out.println(vo.getUser_zipcode());
			vo.setUser_address(vo.getUser_address());
			System.out.println(vo.getUser_address());
			vo.setUser_address_detail(vo.getUser_address_detail());
			System.out.println(vo.getUser_address_detail());
			vo.setUser_address(vo.getUser_address_etc());
			System.out.println(vo.getUser_address_etc());
		}
		// try/catch문을 써도 오류 나요.... 값을 아무것도 받지않으면 null이라서 오류 잡으려고 했는데
		// 잡히지가 않습니다.... mabits로 하는거라 그런가....
		
		dao.updateProfile(vo);
		
		forward.setRedirect(true);
		forward.setPath(req.getContextPath() + "/user/UserUpdateProfile.me");
		return forward;
	}

}
