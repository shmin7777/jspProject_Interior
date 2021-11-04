package com.team.app.consult;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.consult.dao.ConsultDAO;
import com.team.app.consult.vo.ConsultVO;

public class ConsultOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		ConsultDAO dao = new ConsultDAO();
		ConsultVO vo = new ConsultVO();
		ActionForward forward = new ActionForward();

		System.out.println("컨설트오케이까지 들어옴");
		// 로그인된 유저 아이디 가져오기? 세션에 담긴 아이디 넘겨받기
		String theme = req.getParameter("cns_themeSelect");
		
		vo.setUser_id((String)req.getSession().getAttribute("session_id"));
		
		vo.setCns_total_price(req.getParameter("cns_total_price"));
		
		vo.setCns_roomType(req.getParameter("cns_roomType"));
		
		vo.setCns_square(Integer.parseInt(req.getParameter("cns_square")));
		
		vo.setCns_roomCnt(Integer.parseInt(req.getParameter("cns_roomCnt")));
		
//		if(theme == "/test01/images/marvel.png") {
//			theme = "Marvel";
//		}else if(theme == "/test01/images/ghibli.jpg") {
//			theme = "Ghibli";
//		}else if(theme == "/test01/images/disney.png") {
//			theme = "Disney";
//		}else if(theme == "/test01/images/dc.jpg") {
//			theme = "DC";
//		}else if(theme == "/test01/images/pixar.png") {
//			theme = "Pixar";
//		}else if(theme == "/test01/images/sanrio.png") {
//			theme = "Sanrio";
//		}else if(theme == "/test01/images/etc.png") {
//			theme = "기타";
//		}else if(theme == "/test01/images/black.jpg") {
//			theme = "모던 - 블랙";
//		}else if(theme == "/test01/images/blue.png") {
//			theme = "모던 - 블루";
//		}else if(theme == "/test01/images/brown.jpg") {
//			theme = "모던 - 브라운";
//		}else if(theme == "/test01/images/red.jpg") {
//			theme = "모던 - 레드";
//		}else if(theme == "/test01/images/white.jpg") {
//			theme = "모던 - 화이트";
//		}
		System.out.println(theme);
		vo.setCns_themeSelect(req.getParameter(theme));
		
		dao.insertConsult(vo);
		
		System.out.println("디비에 담겼음");
		forward.setRedirect(true);
		forward.setPath(req.getContextPath()+"/app/main/index.jsp");
		return forward;
	}

}
