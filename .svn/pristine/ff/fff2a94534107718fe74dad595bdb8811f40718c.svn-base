package com.team.app.store;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.action.ActionForward;
import com.team.app.manage.ManageInsertEventOkAction;
import com.team.app.manage.ManageInsertNoticeOkAction;
import com.team.app.manage.ManageInsertStoreOkAction;
import com.team.app.manage.ManageLoginOkAction;

public class StoreFrontController extends HttpServlet{

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

		System.out.println("들어옴");
		switch (command) {
		case "/store/Props.st":
			try {forward = new StorePropsOKAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
			break;
		case "/store/furniture.st":
			try {forward = new StorefurnitureOKAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
			break;
		case "/store/productView.st":
			try {forward = new productViewAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
			break;
		case "/store/Product_ReplyWrite.st":
			try {forward = new Product_ReplyWriteOkAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
			break;
		case "/store/Product_ReplyList.st":
			try {forward = new Product_ReplyListAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
			break;
		case "/store/Best.st":
			try {forward = new StoreBestOkAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
			break;
		/*case "/manage/ManageLogin.mn":
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/app/manage/manageLogin.jsp");
			break;
	
		*/
		case "/store/Product_Get_Search_List.st":
			try {forward = new Product_Get_Search_List().execute(req, resp);} catch (Exception e) {System.out.println(e);}
			break;
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
