package com.team.app.payment;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.action.ActionForward;
import com.team.app.store.Product_ReplyListAction;
import com.team.app.store.Product_ReplyWriteOkAction;
import com.team.app.store.StorePropsOKAction;
import com.team.app.store.StorefurnitureOKAction;
import com.team.app.store.productViewAction;

public class PaymentFrontController extends HttpServlet{


	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String requestURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		String command = requestURI.substring(contextPath.length());
		ActionForward forward = null;

		switch (command) {
		case "/payment/Payment.py":
			try {forward = new PaymentAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
			break;
		case "/payment/PaymentOK.py":
			try {forward = new PaymentOKAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
			break;
	

		/*case "/manage/ManageLogin.mn":
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/app/manage/manageLogin.jsp");
			break;
	
		*/
		}

		if (forward != null) {
			if (forward.isRedirect()) {
				resp.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher dispatcher = req.getRequestDispatcher(forward.getPath());
				dispatcher.forward(req, resp);
			}
		}

	}




}
