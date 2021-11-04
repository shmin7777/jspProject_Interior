package com.team.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;

import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.user.dao.UserDAO;

public class UserLoginOkAction implements Action {

   @Override
   public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
      UserDAO dao = new UserDAO();
      System.out.print("들어옴");
      ActionForward forward = new ActionForward();
      HttpSession session = req.getSession();
      
      String id = req.getParameter("id");
      
      boolean loginCheck = dao.login(id, req.getParameter("pw"));
      
      forward.setRedirect(true);
      if(loginCheck) {
         session.setAttribute("session_id", id);
         forward.setPath(req.getContextPath()+"/app/main/index.jsp");
      }else {
         forward.setPath(req.getContextPath()+"/user/UserLogin.me?code="+1);
         
      }
      return forward;
   }

}