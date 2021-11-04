package com.team.app.myPage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.myPage.dao.MyPageDAO;
import com.team.app.payment.vo.PaymentVO;

public class MyPagePurchaseListOkAction implements Action {

   @Override
   public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
      MyPageDAO dao = new MyPageDAO();
      PaymentVO pvo = new PaymentVO();
      ActionForward forward = new ActionForward();
      
      String temp = req.getParameter("page");
      String user_id = (String)req.getSession().getAttribute("session_id");
      
      int page = temp == null ? 1 : Integer.parseInt(temp);
      int pageSize = 10;

      int endRow = page * pageSize;
      int startRow = endRow - (pageSize - 1);
      
      int totalCnt = dao.purchaseGetTotal(user_id);

      int realEndPage = (totalCnt - 1) / pageSize + 1;
      int startPage = ((page - 1) / pageSize) * pageSize + 1;
      int endPage = startPage + 9;
      
      endPage = endPage > realEndPage ? realEndPage : endPage;
      
      List<PaymentVO> list = dao.showPurchaseList(user_id, startRow, endRow);
      
      req.setAttribute("totalCnt", totalCnt);
      req.setAttribute("realEndPage", realEndPage);
      req.setAttribute("startPage", startPage);
      req.setAttribute("endPage", endPage);
      req.setAttribute("nowPage", page);
      req.setAttribute("pList", list);
      req.setAttribute("deliveryStat", dao.deliveryStat());
      
      forward.setRedirect(false);
      forward.setPath("/app/myPage/purchaseHistory.jsp");
      
      return forward;
   }

}